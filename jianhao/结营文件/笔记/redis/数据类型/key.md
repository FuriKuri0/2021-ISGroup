keys *  #查看当前库里所有的key

FLUSHALL  #清空所有库的内容

EXISTS name  #判断当前key是否存在

EXPIRE name 15  #设置key为’name‘的数据过期时间为15秒 单位seconds

ttl name  #查看当前key为’name‘的剩余生命周期时间