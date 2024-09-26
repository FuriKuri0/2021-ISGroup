package com.qgstudio.controller.interceptor.server;

import com.alibaba.fastjson.JSON;
import com.qgstudio.constant.SystemConstant;
import com.qgstudio.controller.Result;
import com.qgstudio.po.CodedText;
import com.qgstudio.service.CheckCodeTxtService;
import com.qgstudio.util.Declassify;
import com.qgstudio.util.Encryption;
import com.qgstudio.util.SpringUtil;
import com.qgstudio.util.StringUtil;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;

import java.io.*;
import java.net.ServerSocket;
import java.net.Socket;
import java.nio.charset.StandardCharsets;

/**
 * @program: Software-management-platform
 * @description: 创建线程
 * @author: stop.yc
 * @create: 2022-07-28 19:22
 **/
//@Controller
public class SocketThread extends Thread implements ApplicationContextAware {


//    @Autowired
//    private CheckCodeTxtService checkCodeTxtService ;
    /**
     * 服务端对象
     */
    private ServerSocket serverSocket;
    /**
     * 默认监听9991端口
     */
    private int port = SystemConstant.PORT;

    private static ApplicationContext applicationContext = null;

//    private static SocketThread socketThread;

//    @PostConstruct
//    public void init(){
//        socketThread=this;
//        socketThread.checkCodeTxtService=this.checkCodeTxtService;
//    }


    /**
     * 构造方法，初始化服务端
     */
    public SocketThread() {
        try {
            // 创建Socket服务器对象，监听9991端口

            serverSocket = new ServerSocket(port);
            System.out.println("ServerSocket创建了....");
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("ServerSocket创建出错....");
            closeSocketServer();
        }
    }

    /**
     * 重写run方法
     */
    @Override
    public void run() {
//        try {
//            //注意点,因为这个是另起的线程,而serverSocket是主线程进行创建赋值,所以可能会导致此线程先于主线程运行,导致空指针异常
////            Thread.sleep(1000);
//
//        } catch (InterruptedException e) {
//            e.printStackTrace();
//        }
        System.out.println("服务端启动了，等待客户端发送消息....");
        // 循环监听，直到线程中断为止
        while (!this.isInterrupted()) {
            try {
                // accept是阻塞方法，等待客户端发消息
                Socket socket = serverSocket.accept();
                if (socket != null && !socket.isClosed()) {
                    // 处理socket消息
                    handleSocket(socket);
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    /**
     * @Description: 处理服务端接收到的socket消息
     * @Param: [socket] :socket对象
     * @return: void
     * @Author: stop.yc
     * @Date: 2022/7/28
     */
    private void handleSocket(Socket socket) {
        InputStream is = null;
        InputStreamReader isr = null;
        BufferedReader br = null;
        OutputStream os = null;
        PrintWriter pw = null;
        StringBuffer result = new StringBuffer();
        try {
            is = socket.getInputStream();
            isr = new InputStreamReader(is, StandardCharsets.UTF_8);
            br = new BufferedReader(isr);

            String info = null;
            // 从流中读取客户端消息
            while ((info = br.readLine()) != null) {
                result.append(info);
            }

            System.out.println("服务端获取的客户端消息为: " + result);
            socket.shutdownInput();

            //签名验证,并获取被保护的json数据
            String decrypt = Declassify.check(result.toString());

            //获取封装了所有敏感数据的对象
            CodedText codedText = JSON.parseObject(decrypt, CodedText.class);

//            ApplicationContext appCtx = SocketThread.getApplicationContext();
//            CheckCodeTxtService checkCodeTxtService =  (CheckCodeTxtService)SocketThread.getBean(CheckCodeTxtService.class);

//            Result<Boolean> booleanResult = checkCodeTxtService.checkCodeTxt(codedText);
//            Boolean data = booleanResult.getData();

            ApplicationContext appCtx = SpringUtil.getApplicationContext();
            CheckCodeTxtService bean = (CheckCodeTxtService) SpringUtil.getBean("checkService");
            Result<Integer> booleanResult = bean.checkCodeTxt(codedText);
            Integer function_type = booleanResult.getData();

            // 给客户端响应消息
            os = socket.getOutputStream();
            pw = new PrintWriter(os);


            String s = Encryption.addRsaAndAesToData(function_type + StringUtil.getRandomString(300));
            pw.write(s);

            pw.flush();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // 关闭资源
            try {
                if (pw != null) {
                    pw.close();
                }
                if (os != null) {
                    os.close();
                }
                if (br != null) {
                    br.close();
                }
                if (isr != null) {
                    isr.close();
                }
                if (is != null) {
                    is.close();
                }
                if (socket != null) {
                    socket.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    /**
     * 关闭socket
     */
    public void closeSocketServer() {
        try {
            if (serverSocket != null && !serverSocket.isClosed()) {
                serverSocket.close();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        SocketThread.applicationContext = applicationContext;
    }

    public static ApplicationContext getApplicationContext() {
        return applicationContext;
    }

    public static Object getBean(String beanName) {
        return applicationContext.getBean(beanName);
    }

    public static Object getBean(Class c) {
        return applicationContext.getBean(c);
    }
}
