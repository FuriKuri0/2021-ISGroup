package cn.stopyc.pool;

import java.util.concurrent.*;

/**
 * @program: JUC-Study
 * @description: 自定义线程池
 * @author: stop.yc
 * @create: 2022-07-16 20:13
 **/
public class MyThreadPool {
    static Integer num = 10;
    public static void main(String[] args) {

         //1.创建一个线程池
        ExecutorService service= new ThreadPoolExecutor(
                5,
                3000,
                1L,
                TimeUnit.SECONDS,
                new ArrayBlockingQueue<>(1),
                Executors.defaultThreadFactory(),
                new ThreadPoolExecutor.DiscardPolicy()
        );


        //2.命令计数器-等待所有人准备抢票
        CountDownLatch cdOrder = new CountDownLatch(1);

        //3.人数计数器,有这么多人抢
        CountDownLatch cdAnswer = new CountDownLatch(3000);

        //4.票数,10张票
//        CountDownLatch tickets = new CountDownLatch(10);


        //5.启动3000个线程

        for(int i=0;i<3000;i++){

            //6.指定线程任务
            Runnable runnable = new Runnable(){
                @Override
                public void run(){
                    try {
                        System.out.println("线程" + Thread.currentThread().getName() +
                                "准备抢票");

                        //7.把所有线程启动,然后卡在准备抢票这里
                        cdOrder.await();

                        //8.判断有没有票
                        if (num > 0) {
                            synchronized (num) {
                                //9.有就票减1
                                num--;
                                System.out.println("线程" + Thread.currentThread().getName() +
                                        "抢到了");
                            }
                        }else {
                            System.out.println("线程" + Thread.currentThread().getName() +
                                    "没有抢到");
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    } finally {
                        //10.有人抢就减1,给后面反馈所有人抢票结束
                        cdAnswer.countDown();
                    }
                }
            };
            //11.为线程池添加任务
            service.execute(runnable);
        }

        try {
            //12.缓冲时间,比如可以制定什么时候开始抢票.等待线程完全启动
            Thread.sleep((long)(Math.random()*10000));

            //13.准备开始
            System.out.println(Thread.currentThread().getName() +
                    "即将00:00");

            //14.开始
            System.out.println( Thread.currentThread().getName() +
                    "开始抢票!正在等待结果");

            //15.发送命令，cdOrder减1，处于等待的线程停止等待转去执行任务
            cdOrder.countDown();

            //16.命令发送后,等3000人全部抢完,就停止活动
            cdAnswer.await();

            System.out.println(Thread.currentThread().getName() +
                    "已收到所有响应结果");
        } catch (Exception e) {
            e.printStackTrace();
        } finally {

            //17.任务结束，停止线程池的所有线程
            service.shutdown();
        }
    }

}
