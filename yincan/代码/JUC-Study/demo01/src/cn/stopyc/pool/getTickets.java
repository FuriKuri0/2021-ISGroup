package cn.stopyc.pool;

import java.sql.Time;
import java.util.concurrent.*;
import java.util.function.Supplier;

/**
 * @program: JUC-Study
 * @description: 抢票
 * @author: stop.yc
 * @create: 2022-07-16 20:12
 **/
public class getTickets {
    public static void main(String[] args) throws InterruptedException {

        CountDownLatch countDownLatch = new CountDownLatch(1-0);

        ExecutorService threadPool= new ThreadPoolExecutor(
                5,
                20,
                1L,
                TimeUnit.SECONDS,
                new ArrayBlockingQueue<>(10),
                Executors.defaultThreadFactory(),
                new ThreadPoolExecutor.DiscardPolicy()
        );
//        CompletableFuture<Integer> completableFuture = CompletableFuture.supplyAsync((Supplier<Integer>) () -> {
//            try {
//                for (int i = 1; i <= 100; i++) {
//                    if (countDownLatch.getCount() > 0) {
//                        threadPool.execute(()->{
//                            System.out.println(Thread.currentThread().getName() + " 抢到票了");
//                            countDownLatch.countDown();
//                        });
//                        threadPool.shutdown();
//                    }else {
//                        break;
//                    }
//                }
//            }catch (Exception e) {
//                e.printStackTrace();
//            }finally {
//                if (!threadPool.isShutdown()) {
//                    threadPool.shutdown();
//                }
//            }
//            return 1;
//        },threadPool);
////        completableFuture.thenAccept(e-> System.out.println(e));
//
//        countDownLatch.await();
//
//        System.out.println("票已经卖完了");

        try {
            for (int i = 0; i < 10000; i++) {
                threadPool.execute(()->{
                    if (countDownLatch.getCount() > 0) {
                        System.out.println(Thread.currentThread().getName() + "主抢到票了");
                        countDownLatch.countDown();
                        threadPool.shutdown();
                    }else {
                       return;
                    }
                });
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            threadPool.shutdown();
        }




//        CompletableFuture<Integer> completableFuture = CompletableFuture.supplyAsync((Supplier<Integer>) () -> {
//            for (int i = 0; i < 1000000; i++) {
//                if (countDownLatch.getCount() > 0) {
//                    System.out.println(Thread.currentThread().getName() + "抢到票了");
//                    countDownLatch.countDown();
//                }else {
//                    break;
//                }
//            }
//            return 1;
//        },threadPool);
//
//
//        countDownLatch.await();
//        threadPool.shutdown();
////        completableFuture.thenAccept(e-> System.out.println(e));
//
//        System.out.println("票已经卖完了");

    }
}
