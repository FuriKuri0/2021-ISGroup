package cn.stopyc.sync;

/**
 * @program: JUC-Study
 * @description: 线程间通信demo
 * @author: stop.yc
 * @create: 2022-07-15 20:02
 **/


/**
 * 1.编写资源类
 */
class Share {
    /**
     * 1.1属性
     */
    private int number = 0;

    /**
     * 1.2方法
     */
    public synchronized void add () throws InterruptedException {
        //2.1:判断
        //改为while,防止虚假唤醒,因为此线程有时候会被别的线程唤醒,直接走出判断条件
        //但是不应该是这个线程干活,即他越过了一次判断.添加while,被唤醒后不应该直接干活
        //而应该是先进行判断.
        while (number != 0) {
            //等待
            this.wait();
        }

        //2.2:干活
        number++;
        System.out.println(Thread.currentThread().getName() + " " +number);

        //2.3通知
        this.notifyAll();
    }

    public synchronized void sub() throws InterruptedException {
        //同上
        while (number != 1) {
            this.wait();
        }

        number--;
        System.out.println(Thread.currentThread().getName() +" "+ number );
        this.notifyAll();
    }
}
public class ThreadDemo01 {
    public static void main(String[] args) {
        Share share = new Share();

        //创建多个线程,调用操作方法
        new Thread(()->{
            for (int i = 0; i < 10; i++) {
                try {
                    share.add();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        },"AA").start();

        new Thread(()->{
            for (int i = 0; i < 10; i++) {
                try {
                    share.sub();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        },"BB").start();
    }
}
