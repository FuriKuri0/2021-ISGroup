# Caffeine

Caffeine是一款基于Java8开发的，提供近乎最佳命中率的高性能的本地缓存库



## 快速入门：

```java
@Test
void test(){
	//创建缓存对象
	Cache<String,String> cache =  Caffeine.newBuilder().build();
	
	//存数据
	cache.put("gf","caiqian");
	
	//取出数据
	cache.get("gf");
	
	//取数据，若数据不在内存中，则取数据库中获取
	String gf = cache.get("gf",key -> {
		//根据数据库操作 key 查询 value
        ...
		return xxx;
	});
}
```



## Caffeine缓存的驱逐策略

- 基于容量	设置缓存数量的上线

  ```java
  Cache<String,String> cache =  Caffeine.newBuilder()
  			.maximumSize(1)
  			.build();
  ```

- 基于时间    设置缓存的有效时间

  ```java
  Cache<String,String> cache =  Caffeine.newBuilder()
  		.expireAfterWrite(Duration.ofSeconds(10))	//设置缓存有效时间为10秒，从最后一次写入开始计算
      	.build();
  ```

  

#### 在默认情况下，当一个缓存元素过期的时候，Caffeine不会自动立刻清理驱逐，而是在一次读或写操作后，或者是在空闲时间对失效数据进行清楚