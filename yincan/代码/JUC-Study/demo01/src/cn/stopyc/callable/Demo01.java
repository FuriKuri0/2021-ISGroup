package cn.stopyc.callable;

import java.util.TreeMap;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

/**
 * @program: JUC-Study
 * @description: callable接口学习，比较两个接口
 * @author: stop.yc
 * @create: 2022-07-16 15:31
 **/

class  MyThread1 implements Runnable {

    @Override
    public void run() {

    }
}


class MyThread2 implements Callable {

    @Override
    public Integer call() throws Exception {
        return 200;
    }
}


public class Demo01 {
    public static void main(String[] args) {

        //实现了Runnable接口
        new Thread(new MyThread1(),"A").start();

        //实现了Callable接口,报错
//        new Thread((new MyThread2(),"B").start();

        //FutureTask
        FutureTask<Integer> futureTask = new FutureTask<>(new MyThread2());

        //lam表达式
        FutureTask<Integer> futureTask1 = new FutureTask<>(()->{
            System.out.println(Thread.currentThread().getName() + " come in callable");
            return 1024;
        });

        new Thread(futureTask1,"lucy").start();

        while (!futureTask1.isDone()) {
            System.out.println("wait....");
        }

        try {
            System.out.println(futureTask1.get());
            System.out.println(futureTask1.get());
        } catch (InterruptedException e) {
            e.printStackTrace();
        } catch (ExecutionException e) {
            e.printStackTrace();
        }

        System.out.println(Thread.currentThread().getName() + "come over");
    }
}
