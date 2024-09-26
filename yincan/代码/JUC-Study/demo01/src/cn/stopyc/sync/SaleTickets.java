package cn.stopyc.sync;

/**
 * @program: JUC-Study
 * @description: 买票系统
 * @author: stop.yc
 * @create: 2022-07-15 16:29
 **/

class Ticket {
    /**
     * 票数
     */
    private int number = 30;

    public synchronized void sale(){
        //判断是否有票
        if (number > 0) {
            System.out.println(Thread.currentThread().getName() + ":卖出了" + (30 - --number) + " 还剩: " + number);
        }
    }


}
public class SaleTickets {
    //第二步， 创建多个线程，调用资源类的操作方法

    public static void main(String[] args) {
        Ticket ticket = new Ticket();

        new Thread(new Runnable() {
            @Override
            public void run() {
                for (int i = 0; i < 40; i++) {
                    ticket.sale();
                }
            }
        },"AA").start();


        new Thread(new Runnable() {
            @Override
            public void run() {
                for (int i = 0; i < 40; i++) {
                    ticket.sale();
                }
            }
        },"CC").start();

        new Thread(new Runnable() {
            @Override
            public void run() {
                for (int i = 0; i < 40; i++) {
                    ticket.sale();
                }
            }
        },"BB").start();
    }

}
