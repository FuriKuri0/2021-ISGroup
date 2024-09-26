package cn.stopyc;

/**
 * @program: JUC-Study
 * @description: 用户进程or守护进程
 * @author: stop.yc
 * @create: 2022-07-15 15:58
 **/
public class demo01 {
    public static void main(String[] args) {
        Thread aa = new Thread(() -> {
            //是否是守护进程
            System.out.println(Thread.currentThread().getName() + "::" + Thread.currentThread().isDaemon());
            while (true) {

            }
        }, "aa");
//        aa.setDaemon(true);
        aa.start();

        System.out.println(Thread.currentThread().getName());

        aa.stop();

    }
}
