

## 缓冲区：

1. 缓冲区的实质是一个数组，通常是一个字节数组（但也可以是别的数组）
2. 一个缓冲区中不仅仅只是一个数组。
3. 缓冲区提供了对数据的结构性访问，还可以监控系统的读\写进程



<img src="https://raw.githubusercontent.com/JIaaoooo/ImageHostingService/main/img/NIO%E6%A8%A1%E5%9E%8B.png" style="zoom:67%;" />

### Buffer类以及其子类：

Buffer类定义的所有缓冲区都具有四个属性：

| 属性     | 描述                                                         |
| -------- | ------------------------------------------------------------ |
| Capacity | 容量，即可以容纳的最大数据量；在缓冲区被创建时设定，不能该病 |
| Limit    | 表示缓冲区的当前终点，不能对缓冲区超过极限的位置进行读写操作。极限可改变 |
| Position | 位置，下一个被读写的元素的索引，每次读写缓冲区数据都会改变值，为下一次读写做准备 |
| Mark     | 标记                                                         |



Buffer的常用方法：

```java
public final int capacity()  	//返回此缓冲区的容量
public final int position()		//返回此缓冲区当前的位置
public final Buffer position(int newPosition)	//设置此缓冲区的新开始的位置
public final int limit()	//返回此缓冲区的限制
public final Buffer limit(int newLimit)		//设置此缓冲区的新的限制
public final Buffer clear()			//清楚此缓冲区，即将各个标记还原到初始位置，数据未消除    
public final Buffer file()			//反转此缓冲区
public final boolen hasRemaining()	//判断缓冲区中时是否还有元素
public abstract boolen isReadOnly()		//判断缓冲区是否为只读
```

clear()的源码

```java
public final Buffer cleear(){
	position = 0;
	limit  = capacity;
	mark = -1;
	return this;
}
```

使用hasRemaining()方法读取

```java
while(buffer.hasRemaining()){
	sout("buffer.get()");
}
```

设置为只读

```java
ByteBuffer buffer = Buffer.allocate(1024);
ByteBuffer readOnlyReadBuffer = buffer.asReadOnlyBuffer();
```



### 最常用的子类时ByteBuffer

```java
public static ByteBuffer allocateDirect(int capacity)	//创建直接缓冲区
public static ByteBuffer allocate(int capacity)		//设置缓冲区初始容量
public abstract static ByteBuffer put(byte b)		//从当前位置上put之后，position会自动+1
public abstract static ByteBuffer put(int index, byte b)	//从绝对位置上put，不会造成position的变化
```

注意：在存入Buffer的时候使用哪个数据结构，取出的时候也要对应，否则会抛出异常

```
buffer.putInt(1) 存放一个int型的1进缓冲区				之后->先buffer.flip()	使用buffer.getchar()去获取，会出错
```

动态设置Buffer的大小	

```java
public static ByteBuffer wrap(byte[] array){
	return warap(array,0,array.length);
}


//使用例子：
String str = "hello";
//创建一个恰好适合存放
ByteBuffer buffer  =  ByteBuffer.wrap(str.getBytes())
```





## `MappedByteBuffer` 可使文件直接在内存(堆外内存)修改，操作系统不需要再次拷贝

```java
RandomAccessFile rm = new RandomAccessFile("1.txt","rw");
//创建通道
FileChannel channel = rm.getChannel();
//设置修改参数
/*
参数：1.使用读写模式
	2.开始位置
	3.可直接修改的字节大小,现在最多修改的字节为5，position位置为0-4
*/
MappedByteBuffer mapperbytebuffer = channel.map(FileChannel.MapMode.READ_WRITE,0,5)；
//开始修改，将第position为0的数据修改为int类型的1
mapperbytebuffer.put(0,(int)1)
    
 rm.close()
```

