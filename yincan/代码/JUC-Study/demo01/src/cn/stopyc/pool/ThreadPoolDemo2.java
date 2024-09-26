package cn.stopyc.pool;

import java.util.concurrent.*;

/**
 * @program: JUC-Study
 * @description: 自定义线程池
 * @author: stop.yc
 * @create: 2022-07-16 19:37
 **/
public class ThreadPoolDemo2 {
    public static void main(String[] args) {
        ExecutorService threadPool= new ThreadPoolExecutor(
                2,
                5,
                2L,
                TimeUnit.SECONDS,
                new ArrayBlockingQueue<>(3),
                Executors.defaultThreadFactory(),
                new ThreadPoolExecutor.AbortPolicy()
        );
    }
}
