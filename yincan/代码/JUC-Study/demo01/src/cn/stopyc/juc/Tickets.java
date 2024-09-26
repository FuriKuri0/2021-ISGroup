package cn.stopyc.juc;

import java.util.concurrent.CountDownLatch;

/**
 * @program: JUC-Study
 * @description: 抢票
 * @author: stop.yc
 * @create: 2022-07-16 16:29
 **/
public class Tickets {
    public static void main(String[] args) throws InterruptedException {

        long begin = System.currentTimeMillis();

        //1.100张票
        CountDownLatch countDownLatch = new CountDownLatch(10);

        //2.模拟10000个人开始抢票
        for (int i = 1; i <= 1000; i++) {
            new Thread(()->{
                long count = countDownLatch.getCount();
                if (count > 0) {
                    System.out.println(Thread.currentThread().getName() + "号用户抢到票了");
                    countDownLatch.countDown();
                }else {
//                    System.out.println("wu");
                }
            },String.valueOf(i)).start();
        }

        //3.票抢完了后,关闭抢票
        countDownLatch.await();
        System.out.println(Thread.currentThread().getName() + "抢票结束");


        long needTime = System.currentTimeMillis() - begin;
        System.out.println("系统需要"+needTime+"毫秒");
    }
}
