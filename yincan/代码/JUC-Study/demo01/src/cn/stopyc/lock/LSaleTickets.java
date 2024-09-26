package cn.stopyc.lock;

import java.util.concurrent.locks.ReentrantLock;

/**
 * @program: JUC-Study
 * @description: 使用lock锁进行买票
 * @author: stop.yc
 * @create: 2022-07-15 19:19
 **/

class Ticket {
    private int number = 30;

    private final ReentrantLock lock = new ReentrantLock();

    public void sale () {
        //上锁
        lock.lock();
        try {
            if (number > 0) {
                System.out.println(Thread.currentThread().getName() + ":卖出了" + (30 - --number) + " 还剩: " + number);

            }
        } finally {
            lock.unlock();
        }
    }
}
public class LSaleTickets {
    public static void main(String[] args) {
        Ticket ticket = new Ticket();

        new Thread(()->{
            for (int i = 0; i < 40; i++) {
                ticket.sale();

            }
        },"AA").start();

        new Thread(()->{
            for (int i = 0; i < 40; i++) {
                ticket.sale();

            }
        },"BB").start();

        new Thread(()->{
            for (int i = 0; i < 40; i++) {
                ticket.sale();

            }
        },"CC").start();
    }
}
