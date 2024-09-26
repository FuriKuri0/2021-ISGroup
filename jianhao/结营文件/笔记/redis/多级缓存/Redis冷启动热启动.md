## 冷启动

在服务器刚刚开启的时候，Redis中没有缓存，如果所有商品数据都在第一次查询时添加缓存，可能会对数据库造成压力

## 热启动

在服务器刚刚开始的时候，就将用户的热点数据先存入缓存

```java
//可以在SpringBoot项目中编写初始化类
public class RedisHandler implements InitializingBean {
	@AutoWired
	private StringRedisTemplate redisTemplate;
	@Override
	public void afterPropertiesSet() throws Exception{ //添加进缓存操作 }
}
```



## OpenResty中使用Redis

1. ### 引入Redis模块

   ```lua
   --引入
   local redis = require("resty.redis")
   --初始化Redis对象
   local red = redis:new()
   --设置Redis超时时间	建立连接超时时间	发送请求的超时时间	响应的超时时间
   red:set_timeouts(1000,1000,1000)
   ```

2. 封装函数，用来释放Redis连接，实际上是放在连接池中

   ```lua
   --关闭redis连接的工具函数，实际是将其放入连接池中
   local function close_redis(red)
   	local pool_max_idle_time = 10000	--连接最大空闲时间，单位是毫秒
   	local pool_size	= 100	--连接池大小
   	local ok , err =red:set_keepalive(pool_max_idle_time,pool_size)
   	if not ok then 
   		ngx.log(ngx.ERR,"放入Redis连接池失败：" ,err)
   	end
    end   
   ```

   封装返回集函数

   ```lua
   -- 查询redis的方法 key是redis中的key	path为tomcat的访问前缀	params是路径后接参数
   local function read_redis(key,path,params)
       --获得一个连接	绑定redis
       local ok,err = red:connect("127.0.0.1",6379,key)
       if not ok then 
           ngx.log(ngx.ERR,"连接Redis失败:",err)
           return nil
       end
       --查询redis
       local resp, err = red:get(key)
       --查询失败处理
       if not resp then 
          -- ngx.log(ngx.ERR ,"查询Redis失败：",err,"，key= ",key)
          --在redis中查询失败后，在tomcat中查询
           resp = read_http(path,params)
       end
       --得到数据为null
       if resp == ngx.null then 
           resp = nil
           ngx.log(ngx.ERR ,"查询Redis数据为空,key = " ,key)
       end
       close_redis(red)
       return resp
   end     
   ```
   
   ### 将方法函数封装到common.lua文件中
   
   并在导出函数中添加read_redis = read_redis