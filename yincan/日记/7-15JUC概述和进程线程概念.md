JUC并发编程

# JUC概述和进程线程概念

## 并发和并行

**并发**：同一时刻多个线程在访问同一资源，多个线程对一个点

**并行**：多向工作一起执行，之后再汇总

## 管程

同一时刻只有一个进程在管程内活动。

## 用户线程和守护线程

**用户线程**：平时用到的普通线程，自定义线程

**守护线程**：运行在后台，是一种特殊的线程，比如垃圾回收

**当主线程结束后，用户线程还在运行，JVM存活***

**如果没有用户线程，都是守护现场，JVM结束**

# synchronized与Lock接口

## Synchronized

1. 修饰一个代码块，作用{}括起来的
2. 修饰一个方法，作用于整个方法
3. 修饰一个静态的方法，作用于整个静态方法
4. 修饰一个类，作用于synchronized后面括号括起来的部分

## Lock

lock()方式获取锁，unlock（）解锁。

## Lock 和 synchronized的不同

1. . Lock 是一个接口，而 synchronized 是 Java 中的关键字，synchronized 是内 置的语言实现；
2. synchronized在异常时会自动解锁，而Lock不会，所以要配合try。。catch使用
3. Lock可以让等待锁的线程响应中断，而synchronized不行。
4. Lock可以知道有没有成功获取锁，而synchronized不行
5. Lock可以提高多个线程进行读操作的效率

# 线程间通信

## 多线程编写步骤（上）

1. 创建资源类，在资源类创建属性和操作方法
2. 创建多个线程，调用资源类的操作方法

## 多线程编写步骤（中）

1. 创建资源类，在资源类创建属性和操作方法
2. 在资源类操作方法
   1. 判断
   2. 干活
   3. 通知
3. 创建多个线程，调用资源类的操作方法

## 多线程编写步骤（下）

1. 创建资源类，在资源类创建属性和操作方法
2. 在资源类操作方法
   1. 判断
   2. 干活
   3. 通知
3. 创建多个线程，调用资源类的操作方法
4. 防止虚假唤醒问题.(判断条件时使用while)

## 线程间通信

```java
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
        if (number != 0) {
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
        if (number != 1) {
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

```

**synchronize:**

+ 等待：wait()
+ 唤醒：notify()

**lock**:

+ 通过lock获取condition对象：newCondition()
+ 等待：await()
+ 唤醒：signal（）

```java
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

```

```java
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

```

# 线程间定制化通信

思路：添加标记位，通过标记位决定唤醒哪个线程。

```java
package cn.stopyc.lock;

/**
 * @program: JUC-Study
 * @description: 多线程定制通信
 * @author: stop.yc
 * @create: 2022-07-15 21:20
 **/

import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/**
 * 1 新建资源类
 */

class ShareResource {

    /**
     * 标志位,1:A,2:b,3:c;
     */
    private int flag = 1;

    /**
     * 获取锁对象
     */
    private final Lock lock = new ReentrantLock();

    private final Condition c1 = lock.newCondition();
    private final Condition c2 = lock.newCondition();
    private final Condition c3 = lock.newCondition();


    public void print5(int loop) throws InterruptedException {
        //上锁
        lock.lock();
        try {

            //判断
            while(flag != 1) {
                c1.await();
            }

            //干活
            for (int i = 0; i < 5; i++) {
                System.out.println(Thread.currentThread().getName() + "loop : " + loop);
            }
			//修改标记位
            flag = 2;
            //通知
            c2.signal();
        }finally {
            lock.unlock();
        }
    }


    public void print10(int loop) throws InterruptedException {
        //上锁
        lock.lock();
        try {

            //判断
            while(flag != 2) {
                c2.await();
            }

            //干活
            for (int i = 0; i < 10; i++) {
                System.out.println(Thread.currentThread().getName() + "loop : " + loop);
            }

            flag = 3;
            c3.signal();
        }finally {
            lock.unlock();
        }
    }



    public void print15(int loop) throws InterruptedException {
        //上锁
        lock.lock();
        try {

            //判断
            while(flag != 3) {
                c3.await();
            }

            //干活
            for (int i = 0; i < 15; i++) {
                System.out.println(Thread.currentThread().getName() + "loop : " + loop);
            }

            flag = 1;
            c1.signal();
        }finally {
            lock.unlock();
        }
    }
}

public class ThreadDemo03 {
    public static void main(String[] args) {
        ShareResource shareResource = new ShareResource();

        new Thread(()->{
            for (int i = 1; i <= 10; i++) {
                try {
                    shareResource.print5(i);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        },"AA").start();

        new Thread(()->{
            for (int i = 1; i <= 10; i++) {
                try {
                    shareResource.print10(i);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        },"BB").start();


        new Thread(()->{
            for (int i = 1; i <= 10; i++) {
                try {
                    shareResource.print15(i);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        },"CC").start();
    }
}

```

# 集合的线程安全

## 不安全的集合ArrayList、HashSet、：

```java
//arraylist集合的add方法,arraylist的底层是一个数组,
public boolean add(E e) {

    /**
     * 添加一个元素时，做了如下两步操作
     * 1.判断列表的capacity容量是否足够，是否需要扩容
     * 2.真正将元素放在列表的元素数组里面
     */
    ensureCapacityInternal(size + 1);  // Increments modCount!!
    elementData[size++] = e;
    return true;
}
/*即先获取数组大小,再通过大小充当下标进行添加数据.
所以这是分为两步的,那么当多个线程一起运行,就有可能被别的线程插入,
es:即A获取size为10,B获取size为10,B添加数据在array[size++]=array[10],A添加在
array[size++]=array[11],那么这个结果就不是我们想要的结果了,并且，++也是一步操作，可能还没++，别的线程也同时进行写入操作，导致覆盖；而且,当数组的长度只有11时,array[11]就已经越界了,产生数组越界异常.*/
```

[参考文章-为什么说ArrayList是线程不安全的？](https://blog.csdn.net/u012859681/article/details/78206494)

## 解决方案一-Vector

不使用Arraylist集合,使用Vector集合.(古老)

## 解决方案二-Collections

使用Collections工具进行同步化集合(同样古老)

```java
List<String> list = Collections.synchronizedList(new Arraylist());
```

## 解决方案三-CopyOnWriteArrayList、CopyOnWriteArraySet、ConcurrentHashMap

```java
List<String> list = new CopyOnWriteArrayList();
```

## CopyOnWrite原理:

在写的时候不对原集合进行修改，而是重新复制一份，在add等方法处加锁，修改完之后，再移动指针。
```java
/**
     * Appends the specified element to the end of this list.
     *
     * @param e element to be appended to this list
     * @return {@code true} (as specified by {@link Collection#add})
     */
    public boolean add(E e) {
        final ReentrantLock lock = this.lock;//重入锁
        lock.lock();//加锁啦
        try {
            Object[] elements = getArray();
            int len = elements.length;
            Object[] newElements = Arrays.copyOf(elements, len + 1);//拷贝新数组
            newElements[len] = e;
            setArray(newElements);//将引用指向新数组  1
            return true;
        } finally {
            lock.unlock();//解锁啦
        }
    }
```

## CopyOnWriteArrayList的优缺点：

**缺点**：

1. 耗内存（集合复制）
2. 实时性不高（在进行读操作的时候是读取旧集合数据）

**优点**：

1. 数据一致性完整（加锁，防止并发数据异常）
2. 解决了遍历迭代问题（读操作，Vector虽然线程安全，只不过是加了synchronized关键字）

## **CopyOnWriteArrayList使用场景**：

​	结合缺点进行思考

1. 读多写少
2. 集合不大
3. 实时性要求不高

[参考文章-先简单说一说Java中的CopyOnWriteArrayList](https://juejin.cn/post/6844903576339218440)

# 多线程锁

## synchronized锁

​	synchronized 修饰普通方法，锁住的是当前对象，即一个线程调用资源类中的被sync修饰的方法后，其他线程无法调用资源类中被sync修饰的方法，就是已经把对象中被sync修饰的方法锁住，而普通方法不会受到影响。

1. synchronized 修饰非静态方法，锁住当前对象，即this，一个线程调用了对象中的被synchronized 修饰的方法，其他被synchronized 修饰的方法无法被其他线程所调用。注意是this，对象，而不是用一个类。
2. synchronized 修饰静态方法，这个则是锁定一个类，即出现的所有基于此类的对象，都会受到锁的影响。

## 公平锁与非公平锁

```java
ReentrantLock lock = new ReentrantLock(); -- 默认非公平锁
ReentrantLock lock = new ReentrantLock(false); -- 非公平锁
ReentrantLock lock = new ReentrantLock(true); -- 公平锁
```

**公平锁特点**：

+ 保证每个线程都能干活
+ 效率相对低下

**非公平锁特点**：

+ 可能造成某个线程无活可干
+ 效率相对较高

## 可重入锁

synchronized（隐式）和lock（显式）都是可重入锁

也叫 递归锁

## 死锁

1. 什么是死锁

两个或者两个以上的进程在执行过程中，因为争夺资源而造成一种互相等待的现象，如果没有外力干涉，他们无法再执行下去。![image-20220716145443010](https://cdn.jsdelivr.net/gh/stopyc/picb@main/202207161454075.png)

2. 产生死锁原因
   1. 系统资源不足
   2. 进程运行推进顺序不合适
   3. 资源分配不当

3. 验证是否是死锁

   1. jps -- idea终端窗口，查看当前进程，查看有问题的类的进程号![image-20220716150915036](https://cdn.jsdelivr.net/gh/stopyc/picb@main/202207161509086.png)
   2. jstack 进程号 -- 查看堆栈信息![image-20220716150947831](https://cdn.jsdelivr.net/gh/stopyc/picb@main/202207161509874.png)![image-20220716151003460](https://cdn.jsdelivr.net/gh/stopyc/picb@main/202207161510511.png)

   死锁代码如下

   ```java
   package cn.stopyc.sync;
   
   import java.util.concurrent.TimeUnit;
   
   /**
    * @program: JUC-Study
    * @description: 创建死锁
    * @author: stop.yc
    * @create: 2022-07-16 15:02
    **/
   public class DeadLock {
       public static void main(String[] args) {
           //线程a持有锁a，试图获取锁b
           //线程b持有锁b，试图获取锁a
   
           //创建两个对象
           Object a = new Object();
           Object b = new Object();
   
           new Thread(()->{
               synchronized (a) {
                   System.out.println(Thread.currentThread().getName() + "试图持有锁a，试图获取锁b " );
                   try {
                       TimeUnit.SECONDS.sleep(1);
                   } catch (InterruptedException e) {
                       e.printStackTrace();
                   }
                   synchronized (b) {
                       System.out.println(Thread.currentThread().getName() + "试图获取锁b");
                   }
               }
           },"A").start();
   
   
           new Thread(()->{
               synchronized (b) {
                   System.out.println(Thread.currentThread().getName() + "试图持有锁b，试图获取锁a " );
                   try {
                       TimeUnit.SECONDS.sleep(1);
                   } catch (InterruptedException e) {
                       e.printStackTrace();
                   }
                   synchronized (a) {
                       System.out.println(Thread.currentThread().getName() + "试图获取锁a");
                   }
               }
           },"B").start();
       }
   }
   
   ```

   

# Callable接口

## 创建线程多种方式

1. 继承Thread类
2. 实现Runnable接口
3. Callable接口
4. 通过线程池

## Runnable接口和Callable接口的区别

1. 是否有返回值
2. 是否抛出异常
3. 实现方法名称不同，一个是run方法，一个call方法

代码实现：

+ Runnable接口有实现类FutureTask
+ FutureTask构造可以传递Callable

```java
package cn.stopyc.callable;

import java.util.concurrent.Callable;
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
            return 1024;
        });
    }
}
```

FutrueTask 原理：

主线程通过FutureTask对象单开线程进行后台操作，多用于耗时的计算。

# JUC强大的辅助类

## CountDownLatch

减少计数工具，演示代码如下：

```java
package cn.stopyc.juc;

import java.util.concurrent.CountDownLatch;

/**
 * @program: JUC-Study
 * @description: 计数器
 * @author: stop.yc
 * @create: 2022-07-16 16:06
 **/
public class CountDownLatchDemo {

    public static void main(String[] args) throws InterruptedException {
        //有6个同学，等到6个同学全部离开，班长锁门

        //1. 先建立计数器，初始值为6
        CountDownLatch countDownLatch = new CountDownLatch(6);

        //2.创建6个线程，模拟6个同学
        for (int i = 1; i <= 6; i++) {
            new Thread(()->{
                //模拟同学离开
                System.out.println(Thread.currentThread().getName() + "号同学离开了教室");

                //3.计数器减一
                countDownLatch.countDown();
            },String.valueOf(i)).start();
        }

        //4,等待,只有当计数器等于0时,才开始await下面的语句
        countDownLatch.await();

        //5.班长关门走人
        System.out.println(Thread.currentThread().getName() + "班长关门走人了~");
    }
}
```

## CyclicBarrier

循环栅栏

```java
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
```

## Semaphore

信号灯

```java
package cn.stopyc.juc;

import java.util.Random;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

/**
 * @program: JUC-Study
 * @description: 信号灯
 * @author: stop.yc
 * @create: 2022-07-16 16:51
 **/
public class SemaphoreDemo {
    public static void main(String[] args) {
        //创建Semaphore,设置许可数量
        Semaphore semaphore = new Semaphore(3);


        //创建6辆汽车
        for (int i = 1; i <= 6; i++) {
            new Thread(()->{
                try {
                    //抢占车位
                    semaphore.acquire();
                    System.out.println(Thread.currentThread().getName()+"抢到了车位 ");
                    //停车
                    TimeUnit.SECONDS.sleep(new Random().nextInt(5));

                    //离开
                    System.out.println(Thread.currentThread().getName()+"离开了车位");
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }finally {
                    //放弃车位离开
                    semaphore.release();
                }
            },String.valueOf(i)).start();
        }
    }
}
```

# 读写锁

## 悲观锁

完全锁死,不支持并发

## 乐观锁

对数据库增加版本号信息,在进行操作时,先比对版本号,版本号一致 才可以进行操作

## 表锁

整表上锁

## 行锁

对一行上锁  

**读锁**:

共享锁,会发生死锁,比如,两个线程都对同一行进行读取操作,然后1线程进行修改,但是需要等线程2退出,2线程也想进行修改,但是需要等线程1退出,所以产生了同时争夺资源的问题.

**写锁**;

独占锁,会发生死锁,比如,1线程对1行进行修改,2线程对2行进行修改,同时1也想改2,2也想改1,但是都得等彼此退出修改.

```java
ReentrantReadWriteLock rwLock = new ReentrantReadWriteLock();
        rwLock.writeLock().lock();
		//write
        rwLock.writeLock().unlock();
        rwLock.readLock().lock();
		//read 
        rwLock.readLock().unlock();
```

## 锁降级

将写入锁降级为读锁

> 获取写锁->获取读锁->释放写锁->释放读锁

读锁不能升级为写锁

# 阻塞队列

ArrayBlockingQueue(常用)

 LinkedBlockingQueue(常用)

## BlockingQueue核心方法

| 方法类型 | 抛出异常  | 特殊值   | 阻塞   | 超时               |
| -------- | --------- | -------- | ------ | ------------------ |
| 插入     | add(e)    | offer(e) | put(e) | offer(e,time,unit) |
| 移除     | remove()  | poll()   | take() | poll(time,unit)    |
| 检查     | element() | peek()   | 不可用 | 不可用             |

代码演示:

```java
package cn.stopyc.queue;

import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.TimeUnit;

/**
 * @program: JUC-Study
 * @description: 阻塞队列
 * @author: stop.yc
 * @create: 2022-07-16 18:55
 **/
public class BlockingQueueDemo {
    public static void main(String[] args) throws InterruptedException {
        //创建阻塞队列
        ArrayBlockingQueue<Object> blockingQueue = new ArrayBlockingQueue<>(3);

        //第一组
        System.out.println(blockingQueue.add("a"));
        System.out.println(blockingQueue.add("b"));
        System.out.println(blockingQueue.add("c"));
        System.out.println(blockingQueue.element());
//        System.out.println(blockingQueue.add("c"));

        System.out.println(blockingQueue.remove());
        System.out.println(blockingQueue.remove());
        System.out.println(blockingQueue.remove());
//        System.out.println(blockingQueue.remove());

        //第二组
        System.out.println(blockingQueue.offer("a"));
        System.out.println(blockingQueue.offer("b"));
        System.out.println(blockingQueue.offer("c"));
        System.out.println(blockingQueue.offer("d"));

        System.out.println(blockingQueue.poll());
        System.out.println(blockingQueue.poll());
        System.out.println(blockingQueue.poll());
        System.out.println(blockingQueue.poll());

        //第三组
        blockingQueue.put("a");
        blockingQueue.put("b");
        blockingQueue.put("c");
//        blockingQueue.put("d");


        //第四组
        System.out.println(blockingQueue.offer("a"));
        System.out.println(blockingQueue.offer("a"));
        System.out.println(blockingQueue.offer("a"));
        System.out.println(blockingQueue.offer("a",3L, TimeUnit.SECONDS));
    }
}
```

# TreadPool线程池

## 创建方法

```java
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

```

## 7个参数的介绍

![image-20220716192414129](https://cdn.jsdelivr.net/gh/stopyc/picb@main/202207161924218.png)

## 线程池底层工作原理

![image-20220716193225690](https://cdn.jsdelivr.net/gh/stopyc/picb@main/202207161932810.png)

## JDK内置拒绝策略

![image-20220716193305660](https://cdn.jsdelivr.net/gh/stopyc/picb@main/202207161933767.png)

## 自定义线程池

```java
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
```

# 分支合并框架

# 异步回调

上面两个不是很了解,下次一定

# 线程池模拟多人抢票

```java
package cn.stopyc.pool;

import java.util.concurrent.*;

/**
 * @program: JUC-Study
 * @description: 自定义线程池
 * @author: stop.yc
 * @create: 2022-07-16 20:13
 **/
public class MyThreadPool {
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
        CountDownLatch tickets = new CountDownLatch(10);

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
                        if (tickets.getCount() > 0) {
                            synchronized (this) {
                                //9.有就票减1
                                System.out.println("线程" + Thread.currentThread().getName() +
                                        "抢到了");
                                tickets.countDown();
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
```

[参考文章](https://blog.csdn.net/zhao9tian/article/details/40346899)
