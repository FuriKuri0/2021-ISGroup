package com.qgstudio.controller;

import com.qgstudio.exception.BusinessException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.net.URLEncoder;
import java.nio.file.Files;
import java.util.Map;
import java.util.Set;

/**
 * @program: Software-management-platform
 * @description: 文件模块表现层，为了便于移植，同时也处理业务逻辑
 * @author: OuroborosNo2
 * @create: 2022-07-27 21:57
 **/
@RestController
@RequestMapping("files")
public class FileController {

    @Autowired
    private HttpServletResponse response;

    @Value("${file.resourcesPath}")
    private String resourcesPath;

    /**上传图片
     * @param f1 上传的图片
     * @param type 类型，user还是software
     * @param id
     * @return 结果集
     * */
    @PostMapping("/uploadImg")
    public Result uploadImg(@RequestParam("file1") MultipartFile f1,@RequestParam("type")String type,@RequestParam("id")Integer id){
        //目标路径
        String destFilePath;
        try {
            //获取文件原始名称
            String originalFilename = f1.getOriginalFilename();
            //文件后缀名
            String suffix = originalFilename.substring(originalFilename.lastIndexOf("."), originalFilename.length());
            String pSep = File.separator;
            String fileName;
            if (type.equals("user")) {
                //属于用户的图片
                fileName = "headImg" + suffix;
                destFilePath = "image" + pSep + "user" + pSep + id + pSep;
            } else {
                //属于软件的图片
                fileName = "software_icon" + suffix;
                destFilePath = "image" + pSep + "software" + pSep + id + pSep;
            }
            File destFile = new File(resourcesPath + destFilePath);
            if(destFile.exists()) {
                //先删除目录下的图片，防止因后缀名不同而保存下多个文件
                for (File file:destFile.listFiles()) {
                    file.delete();
                }
            }
            destFilePath += fileName;
            destFile = new File(resourcesPath + destFilePath);
            //调用transferTo将上传的文件保存到指定的地址
            System.out.println(resourcesPath + destFilePath);
            f1.transferTo(destFile);
        }catch (IOException e){
            return new Result(ResultEnum.FILE_UPLOAD_ERR.getCode(),ResultEnum.FILE_UPLOAD_ERR.getMsg());
        }
        return new Result(ResultEnum.FILE_UPLOAD_OK.getCode(),ResultEnum.FILE_UPLOAD_OK.getMsg(),destFilePath);

    }
    /**上传安装包
     * @param f1 上传的文件
     * @param software_id
     * @param version_id
     * @return 结果集
     * */
    @PostMapping("/uploadFile")
    public Result uploadFile(@RequestParam("file1") MultipartFile f1,@RequestParam("software_id")Integer software_id,@RequestParam("version_id")int version_id){
        //目标路径
        String destFilePath;
        try {
            //获取文件原始名称
            String originalFilename = f1.getOriginalFilename();
            String pSep = File.separator;

            destFilePath = "setupPack" + pSep + software_id + pSep + version_id + pSep;
            File destFile = new File(resourcesPath + destFilePath);
            if(destFile.exists()) {
                //先删除目录下的文件，防止因名字不同而保存下多个文件
                for (File file:destFile.listFiles()) {
                    file.delete();
                }
            }
            destFilePath += originalFilename;
            destFile = new File( resourcesPath + destFilePath);
            //调用transferTo将上传的文件保存到指定的地址
            f1.transferTo(destFile);
        }catch (IOException e){
            return new Result(ResultEnum.FILE_UPLOAD_ERR.getCode(),ResultEnum.FILE_UPLOAD_ERR.getMsg());
        }
        return new Result(ResultEnum.FILE_UPLOAD_OK.getCode(),ResultEnum.FILE_UPLOAD_OK.getMsg(),destFilePath);

    }

    @GetMapping("/downloadImg")
    public Result downloadImg(@RequestParam("type") String type, @RequestParam("id") Integer id){
        String destFilePath;
        String pSep = File.separator;
        if("user".equals(type)){
            //请求的是用户头像
            destFilePath = "image" + pSep + "user" + pSep + id;
        }else if("software".equals(type)){
            //请求的是软件图标
            destFilePath = "image" + pSep + "software" + pSep + id;
        }else{
            return new Result(ResultEnum.FILE_DOWNLOAD_ERR.getCode(),ResultEnum.FILE_DOWNLOAD_ERR.getMsg());
        }

        File f = new File(resourcesPath + destFilePath);
        if(f.exists()) {
            //因不知道文件名，先获取父目录，再重新赋值f为目录下的文件
            f = f.listFiles()[0];
            try(InputStream in = new FileInputStream(f);OutputStream out = response.getOutputStream()){
                //文件总大小
                //int totalLen=0;
                int len;
                byte[] b = new byte[1024];
                while((len = in.read(b)) > 0){
                    out.write(b,0,len);
                    //totalLen += len;
                }
                //System.out.println(totalLen);
                out.flush();
            }catch(IOException e){
                e.printStackTrace();
                return new Result(ResultEnum.FILE_DOWNLOAD_ERR.getCode(),ResultEnum.FILE_DOWNLOAD_ERR.getMsg());
            }
            return new Result(ResultEnum.FILE_DOWNLOAD_OK.getCode(),ResultEnum.FILE_DOWNLOAD_OK.getMsg());
        }else{
            return new Result(ResultEnum.FILE_DOWNLOAD_ERR.getCode(),ResultEnum.FILE_DOWNLOAD_ERR.getMsg());
        }
    }

    @GetMapping("/downloadFile")
    public Result downloadFile(@RequestParam("software_id") Integer software_id,@RequestParam("version_id") Integer version_id) throws UnsupportedEncodingException {
        response.setContentType("application/octet-stream");

        String destFilePath;
        String pSep = File.separator;
        destFilePath = "setupPack" + pSep + software_id + pSep + version_id;

        File f = new File(resourcesPath + destFilePath);
        if(f.exists() && f.listFiles() != null) {
            //因不知道文件名，先获取父目录，再重新赋值f为目录下的文件
            f = f.listFiles()[0];
            response.setHeader("Content-disposition", "attachment;filename=" + URLEncoder.encode(f.getName(), "UTF-8"));
            try(InputStream in = new FileInputStream(f);OutputStream out = response.getOutputStream()){
                //文件总大小
                //int totalLen=0;
                int len;
                byte[] b = new byte[1024];
                while((len = in.read(b)) > 0){
                    out.write(b,0,len);
                    //totalLen += len;
                }
                //System.out.println(totalLen);
                out.flush();
            }catch(IOException e){
                e.printStackTrace();
                return new Result(ResultEnum.FILE_DOWNLOAD_ERR.getCode(),ResultEnum.FILE_DOWNLOAD_ERR.getMsg());
            }
            System.out.println(f.getAbsolutePath());
            return new Result(ResultEnum.FILE_DOWNLOAD_OK.getCode(),ResultEnum.FILE_DOWNLOAD_OK.getMsg());
        }else{
            return new Result(ResultEnum.FILE_DOWNLOAD_ERR.getCode(),ResultEnum.FILE_DOWNLOAD_ERR.getMsg());
        }
    }
}
