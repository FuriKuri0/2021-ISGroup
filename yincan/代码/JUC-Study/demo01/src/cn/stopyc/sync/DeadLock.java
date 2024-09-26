package cn.stopyc.sync;

import java.util.concurrent.TimeUnit;

/**
 * @program: JUC-Study
 * @description: 创建死锁
 * @author: stop.yc
 * @create: 2022-07-16 15:02
 **/
public class DeadLock {
    public static void main(String[] args) {
        //线程a持有锁a，试图获取锁b
        //线程b持有锁b，试图获取锁a

        //创建两个对象
        Object a = new Object();
        Object b = new Object();

        new Thread(()->{
            synchronized (a) {
                System.out.println(Thread.currentThread().getName() + "试图持有锁a，试图获取锁b " );
                try {
                    TimeUnit.SECONDS.sleep(1);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                synchronized (b) {
                    System.out.println(Thread.currentThread().getName() + "试图获取锁b");
                }
            }
        },"A").start();


        new Thread(()->{
            synchronized (b) {
                System.out.println(Thread.currentThread().getName() + "试图持有锁b，试图获取锁a " );
                try {
                    TimeUnit.SECONDS.sleep(1);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                synchronized (a) {
                    System.out.println(Thread.currentThread().getName() + "试图获取锁a");
                }
            }
        },"B").start();
    }
}
