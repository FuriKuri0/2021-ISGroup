package cn.stopyc.pool;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

/**
 * @program: JUC-Study
 * @description: 线程池
 * @author: stop.yc
 * @create: 2022-07-16 19:08
 **/
public class ThreadPool {
    public static void main(String[] args) {
        //一池5线程
        ExecutorService threadPool1 = Executors.newFixedThreadPool(5);

        //一池一线程
        ExecutorService threadPool2 = Executors.newSingleThreadExecutor();

        //一池可扩容线程
        ExecutorService threadPool3 = Executors.newCachedThreadPool();


        //10个顾客请求
        try {
            for (int i = 0; i < 10; i++) {
                threadPool1.execute(()->{
                    System.out.println(Thread.currentThread().getName()+"办理业务");
                });
            }
        }catch (Exception e) {
            e.printStackTrace();
        }finally {
            threadPool1.shutdown();
        }

        try {
            for (int i = 0; i < 10; i++) {
                threadPool2.execute(()->{
                    System.out.println(Thread.currentThread().getName()+"办理业务");
                });
            }
        }catch (Exception e) {
            e.printStackTrace();
        }finally {
            threadPool2.shutdown();
        }


        try {
            for (int i = 0; i < 10; i++) {
                threadPool3.execute(()->{
                    System.out.println(Thread.currentThread().getName()+"办理业务");
                });
            }
        }catch (Exception e) {
            e.printStackTrace();
        }finally {
            threadPool3.shutdown();
        }
    }
}
