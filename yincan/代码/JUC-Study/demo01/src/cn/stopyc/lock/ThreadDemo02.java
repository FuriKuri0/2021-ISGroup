package cn.stopyc.lock;

import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/**
 * @program: JUC-Study
 * @description: lock实现多线程通信
 * @author: stop.yc
 * @create: 2022-07-15 20:45
 **/

class Share {
    private int number = 0;

    private final ReentrantLock lock = new ReentrantLock();
    private final Condition cond = lock.newCondition();

    public void add () throws InterruptedException {

        lock.lock();
        try {
            while (number != 0) {
                cond.await();
            }

            number++;
            System.out.println(Thread.currentThread().getName() + " "+ number);
            cond.signal();
        }finally {
            lock.unlock();
        }
    }

    public void sub () throws InterruptedException {
        lock.lock();
        try {
            while (number != 1) {
                cond.await();
            }

            number--;
            System.out.println(Thread.currentThread().getName() + " " + number);
            cond.signal();
        } finally {
            lock.unlock();
        }
    }
}

public class ThreadDemo02 {

    public static void main(String[] args) {
        Share share = new Share();

        new Thread(()->{
            for (int i = 0; i < 4; i++) {
                try {
                    share.add();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        },"BB").start();

        new Thread(()->{
            for (int i = 0; i < 4; i++) {
                try {
                    share.sub();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        },"AA").start();
    }
}
