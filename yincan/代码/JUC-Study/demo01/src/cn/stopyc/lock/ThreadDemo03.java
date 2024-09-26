package cn.stopyc.lock;

/**
 * @program: JUC-Study
 * @description: 多线程定制通信
 * @author: stop.yc
 * @create: 2022-07-15 21:20
 **/

import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/**
 * 1 新建资源类
 */

class ShareResource {

    /**
     * 标志位,1:A,2:b,3:c;
     */
    private int flag = 1;

    /**
     * 获取锁对象
     */
    private final Lock lock = new ReentrantLock();

    private final Condition c1 = lock.newCondition();
    private final Condition c2 = lock.newCondition();
    private final Condition c3 = lock.newCondition();


    public void print5(int loop) throws InterruptedException {
        //上锁
        lock.lock();
        try {

            //判断
            while(flag != 1) {
                c1.await();
            }

            //干活
            for (int i = 0; i < 5; i++) {
                System.out.println(Thread.currentThread().getName() + "loop : " + loop);
            }

            //修改标记位
            flag = 2;
            //通知
            c2.signal();
        }finally {
            lock.unlock();
        }
    }


    public void print10(int loop) throws InterruptedException {
        //上锁
        lock.lock();
        try {

            //判断
            while(flag != 2) {
                c2.await();
            }

            //干活
            for (int i = 0; i < 10; i++) {
                System.out.println(Thread.currentThread().getName() + "loop : " + loop);
            }

            flag = 3;
            c3.signal();
        }finally {
            lock.unlock();
        }
    }



    public void print15(int loop) throws InterruptedException {
        //上锁
        lock.lock();
        try {

            //判断
            while(flag != 3) {
                c3.await();
            }

            //干活
            for (int i = 0; i < 15; i++) {
                System.out.println(Thread.currentThread().getName() + "loop : " + loop);
            }

            flag = 1;
            c1.signal();
        }finally {
            lock.unlock();
        }
    }
}

public class ThreadDemo03 {
    public static void main(String[] args) {
        ShareResource shareResource = new ShareResource();

        new Thread(()->{
            for (int i = 1; i <= 10; i++) {
                try {
                    shareResource.print5(i);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        },"AA").start();

        new Thread(()->{
            for (int i = 1; i <= 10; i++) {
                try {
                    shareResource.print10(i);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        },"BB").start();


        new Thread(()->{
            for (int i = 1; i <= 10; i++) {
                try {
                    shareResource.print15(i);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        },"CC").start();
    }


}
