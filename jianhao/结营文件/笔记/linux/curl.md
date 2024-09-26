## cURL可以让你不使用浏览器也可以作为http客户端发送请求

#### 1.默认发送请求方式为GET

```
curl URL 		//以GET方式访问地址
```

#### 2.使用不同的方式访问

1. POST	`curl XPOST URL -d数据`  
2. PUT更新   `curl XPUT URL -d数据`
3. DELETE删除  `curl XDELETE URL `

#### 3.规定HTTP首部

规定传输方式为JSON   `curl XPOST URL -H 'Context-Type:application/json' -d数据`

-H可以添加多个，规定多喝HTTP首部

#### 4.获取到响应的所有首部

` curl -I URL`

#### 5.文件处理

1. `curl -O URL`  直接下载都当前文件夹下
2. `curl -o xxx URL` 下载到当前文件夹下并命名为xxx
3. `curl --limit-rate 速度 URL`  限制下载速度

#### 6.连接测试

1. 跟随重定向  `curl URL -L`
2. 查看底层连接的所有信息，比如握手信息，请求信息  `curl -v URL`