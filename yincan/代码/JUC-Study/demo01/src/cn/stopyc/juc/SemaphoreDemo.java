package cn.stopyc.juc;

import java.util.Random;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/**
 * @program: JUC-Study
 * @description: 信号灯
 * @author: stop.yc
 * @create: 2022-07-16 16:51
 **/
public class SemaphoreDemo {
    public static void main(String[] args) {
        //创建Semaphore,设置许可数量
        Semaphore semaphore = new Semaphore(3);

        ReentrantReadWriteLock rwLock = new ReentrantReadWriteLock();
        rwLock.writeLock().lock();
        rwLock.writeLock().unlock();
        rwLock.readLock().lock();
        rwLock.readLock().unlock();


        //创建6辆汽车
        for (int i = 1; i <= 6; i++) {
            new Thread(()->{
                try {
                    //抢占车位
                    semaphore.acquire();
                    System.out.println(Thread.currentThread().getName()+"抢到了车位 ");
                    //停车
                    TimeUnit.SECONDS.sleep(new Random().nextInt(5));

                    //离开
                    System.out.println(Thread.currentThread().getName()+"离开了车位");
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }finally {
                    //放弃车位离开
                    semaphore.release();
                }
            },String.valueOf(i)).start();
        }
    }
}
