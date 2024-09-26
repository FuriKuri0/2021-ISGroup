package cn.stopyc.juc;

import java.util.concurrent.BrokenBarrierException;
import java.util.concurrent.CyclicBarrier;

/**
 * @program: JUC-Study
 * @description: 循环栅栏
 * @author: stop.yc
 * @create: 2022-07-16 16:20
 **/
public class CyclicBarrierDemo {

    public static final int NUMBER = 7;

    public static void main(String[] args) {

        //1. 创建CyclicBarrier,只有前面的任务做完了,这个才会执行
        CyclicBarrier cyclicBarrier = new CyclicBarrier(NUMBER,()->{
            System.out.println("集齐7颗龙珠可以召唤神龙");
        });


        //2. 集齐7颗龙珠过程
        for (int i = 1; i <= 7; i++) {
            new Thread(()->{

                //3.收集龙珠
                System.out.println(Thread.currentThread().getName() + "星龙珠被收集到了");
                try {
                    //只有收集到了,才算结束,不然就一直等待
                    cyclicBarrier.await();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            },String.valueOf(i)).start();
        }
    }
}
