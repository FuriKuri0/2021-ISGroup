package cn.stopyc.sync;

/**
 * @program: JUC-Study
 * @description: sync的8中情况
 * @author: stop.yc
 * @create: 2022-07-16 10:20
 **/

class Phone {

    public synchronized void sendSMS() throws Exception {
        Thread.sleep(100);
        System.out.println("------sendSMS");
    }

    public synchronized void sendEmail() throws Exception {
        System.out.println("------sendEmail");
    }
}
public class ThreadDemo04 {
    public static void main(String[] args) throws InterruptedException {

        Phone phone = new Phone();

        new Thread(() -> {
            try {
                for (int i = 0; i < 10; i++) {
                    phone.sendSMS();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }, "AA").start();


        new Thread(() -> {
            try {
                System.out.println(11);
                for (int i = 0; i < 10; i++) {
                    phone.sendEmail();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }, "BB").start();
    }
}
