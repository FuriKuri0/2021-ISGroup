package cn.stopyc.juc;

import java.util.concurrent.CountDownLatch;

/**
 * @program: JUC-Study
 * @description: 计数器
 * @author: stop.yc
 * @create: 2022-07-16 16:06
 **/
public class CountDownLatchDemo {

    public static void main(String[] args) throws InterruptedException {
        //有6个同学，等到6个同学全部离开，班长锁门

        //1. 先建立计数器，初始值为6
        CountDownLatch countDownLatch = new CountDownLatch(6);

        //2.创建6个线程，模拟6个同学
        for (int i = 1; i <= 6; i++) {
            new Thread(()->{
                //模拟同学离开
                System.out.println(Thread.currentThread().getName() + "号同学离开了教室");

                //3.计数器减一
                countDownLatch.countDown();
            },String.valueOf(i)).start();
        }

        //4只有当计数器等于0时,才开始await下面的语句
        countDownLatch.await();

        //5.班长关门走人
        System.out.println(Thread.currentThread().getName() + "班长关门走人了~");

    }
}
