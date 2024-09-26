功能：设置响应消息

1.设置响应行     -->设置状态码：`setStatus(int sc)`

2.设置响应头     -->`setHeader(String name  ,  String value)`

3.设置响应体   

​			使用步骤：

1. 获取输出流
   1. 字符输出流：`PrintWriter getWriter()`
   2. 字节输出流`ServletOutputStream getOutputStream()`
2. 使用输出流，将数据输出到客户端浏览器



重定向的代码实现：

`response.sendRedirect ( String s );`参数为重定向的地址

重定向（redirect）的特点：

1. 重定向的地址栏发生变换
2. 重定向可以访问其他站点的资源
3. 两次请求，不可以使用request对象来共享数据

转发（forward）的特点：

1. 转达的地址栏不变
2. 转发职能范围跟当前服务器下的资源
3. 转发是一次请求，可以使用request对象来共享数据

### 输出字符数据：

```
//获取流对象前，设置流的默认编码
//告诉服务器，服务器发送的消息体数据的编码
//resp.setHeader("content-type","test/html;charset=utf-8");
//简化操作：
resp.setContentType("test/html;charset=utf-8");
//获取流对象
PrintWriter ps = resp.getWriter();
ps.println("你好，中国");
```

### 输出字节数据：

```
//获取字节输出流
ServletOutputStream sos = resp.getOutputStream();
//输出数据
sos.write("你好".getBytes());
```

