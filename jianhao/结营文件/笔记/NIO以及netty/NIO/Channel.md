Channel在Java中是一个接口，并且继承了Closeable接口

```
public interface Channel extends  Closeable{}
```

常用的Channel类有

1. FileChannel

   ```java
   常用方法：
   public int read(ByteBuffer dst)，从通道中读取数据到缓冲区,返回值代表读取的数据多少，当返回值为-1时
   public int write(ByteBuffer src)	把缓冲区的数据写到通道中
   public long transferFrom(ReadableByteChannel src, long position, long count) 从目标通道中复制数据到当前通道
   public long transferTo(WriteableByteChannel target, long position)	ba'shu'ju
   ```

   

2. DatagramChannel

3. ServerSocketChannel

4. SocketChannel

