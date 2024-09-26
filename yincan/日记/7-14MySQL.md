MySQL

# 常用类型简介

> 数值

| 类型    | 中文含义           | 字节数          |
| ------- | ------------------ | --------------- |
| float   | 浮点数             | 4个字节         |
| double  | 浮点数             | 8个字节         |
| decimal | 字符串形式的浮点数 | 多,金融计算专用 |
| int     | 标准的整数         | 4个字节         |

> 字符串

| 类型    | 中文含义   | 长度    |
| ------- | ---------- | ------- |
| varchar | 可变字符串 | 0-65535 |
| text    | 文本串     | 2^16-1  |

> 时间日期

| 类型      | 中文含义               | 格式                |
| --------- | ---------------------- | ------------------- |
| datetime  | 时间格式               | yyyy-MM-dd HH:mm:ss |
| timestamp | 1970.1.1到现在的毫秒数 | long                |

> null

# 基本操作

## 连接数据库及一些基础语法

```sql
mysql -uroot -p123456 --连接数据库,u ==username p == password

flush privileges; -- 刷新权限

show databases; -- 查看所有的数据库

user db_name; -- 切换使用某个数据库

show tables; -- 查看数据库中所有的表

describe(desc) ;t_name -- 查看表的信息

exit; -- 退出数据库连接
```

注：

+ [表示可以省略]
+ 因为都是手打内容，可能会难免漏了句末的分号“；”

## 创建数据库

``` sql
create database [if not exists] db_name -- 创建一个数据库[如果不存在的话,]
```

## 删除数据库

```sql
drop databases [if exists] db_name -- 删除一个数据库
```

注：从这里开始，非语法内容，如数据库名，表名，都带上反引号``.

## 使用数据库

```sql
use `db_name`;
```

## 查看数据库

```sql
show databases -- 查看所有的数据库
```

## 创建数据库表

```sql
格式:
creat table [if not exists] `表名`(
		`字段名` 列类型(大小) [属性] [索引] [注释],
  	`字段名` 列类型(大小) [属性] [索引] [注释],
  	`字段名` 列类型(大小) [属性] [索引] [注释]
)emgine=[表类型] [字符集设置] [注释]

例子:
create table if not exists `t_student` (
	`id` INT ( 5 ) NOT NULL AUTO_INCREMENT COMMENT '学生id',
		`name` VARCHAR ( 50 ) NOT NULL DEFAULT '匿名' COMMENT '学生姓名',
		`pwd` VARCHAR ( 20 ) NOT NULL DEFAULT '123456' COMMENT '登录密码',
		`sex` VARCHAR ( 3 ) NOT NULL DEFAULT '男' COMMENT '学生性别',
		`birthday` TIMESTAMP  DEFAULT CURRENT_TIMESTAMP COMMENT '学生生日',
		`address` VARCHAR ( 10 ) DEFAULT NULL COMMENT '学生地址',
		`email` VARCHAR ( 100 ) DEFAULT NULL COMMENT '学生邮箱' ,
		PRIMARY KEY ( `id` ) 
) ENGINE = INNODB DEFAULT CHARSET=utf8 
```

注：第一次学习先跟着敲，后面我们大多数都是用可视化工具直接生成。

## 修改表结构

```sql
alter table `t_oldname` rename as `t_newnamw`; -- 修改表名

alter table `t_name` add id int(11) not null default 123; -- 增加字段

alter table `t_name` modify id varchar(20); -- 修改id字段约束,从int变为varchar

alter table `t_name` id id1 int(11) (not null); -- 字段重命名
```

## 删除表

```sql
drop table if exists `t_name`;
```

注：[] 是可以省略,不是语法.

## 表--添加

```sql
insert into 表名[(字段名1,字段名2,字段名3)] values (值1.1,值1.2,值1.3),(值2.1,值2.2,值2.3);
```

## 表--修改

```sql
 update `t_name` set `name`=2 where `id`=2 and `gender`=0;
```

## 表--删除

```sql
delete from `t_name` where `id`=1; -- 删除某一些

truncate `t_name` -- 删除一整个表中的数据(自增重新开始,不会影响事务)
```

## 表--查询

```sql
select * from `t_name`; -- 查询表中的所有数据

select `name` from `t_name` where `id`=1; -- 查询某个字段

select distinct `gender` from `t_name` -- 去重```
```

## where

| 运算符      | 描述           |
| ----------- | -------------- |
| is null     | 空             |
| is not null | 非空           |
| between and | 间于           |
| like        | 模糊,配合%使用 |
| in          | 处于           |

附：我们一般在dao层都会使用预处理去预防sql注入，而当sql语句中存在like，直接把用户参数用占位符也会出现sql注入，比如当你输入30%，那么like就会检测出%去进行模糊查询。

```java
//需要用concat函数进行拼接,强行补上
String sql = "select * from `t_name` where  `name`  like CONCAT('%',?,'%') ";
```

## 联表查询

### 多表

总结：主要看那个表为主，就显示谁的数据。

```sql
-- 显示有成绩的本校学生信息(只显示本校的,就是本校学生信息表中存在的,并且参加考试了的学生)
select `studentname`,s.`studentno`,`studentresult` 
from `student` s
inner join result r
on r.studentno = s.studentno

-- 显示学校中所有学生的成绩信息(不管有没有成绩,就表示会显示没有成绩的学生信息,那么就可以在最后添加where条件判断查出缺考的学生)
select s.studentno,studentname,studentresult 
from `student` s
left join result r  
on r.studentno = s.studentno

-- 显示在本校考试的学生成绩,(就是可以不是本校学生,但都是有成绩的)
select r.studentno,studentname,studentresult
from student s
right join result r
on r.studentno = s.studentno
```

### 自连接

```sql
	select a.categoryname,b.categoryname from category a,category b where a.categoryid = b.pid
```

## 分页排序

```sql
order by `name` 怎么排(升序 asc,降序 desc 默认升序)

limit 起始行数 页面的大小(展示的行数) -- limit (n-1)*pageSize,pageSize

总页数 = ceiling(数据总数/页面大小)
```

## 子查询

```sql
-- 子查询
select s.studentno,studentname 
	from student s
	inner join result r -- 联表
	on s.studentno = r.studentno
	where subjectno = ( -- 条件是课程编号等于下面的select语句查询出来后的值
			select subjectno  -- 这个会查询出高等数学的课程编号
			from `subject`
			where subjectname = '高等数学-1'
	) and studentresult >=80 -- 大于80
```

![image-20220714110346774](https://cdn.jsdelivr.net/gh/stopyc/picb@main/202207141103932.png)

## 事务

ACID

```sql
create database `shop` character set utf8 collate utf8_general_ci /* 创建数据库,设置字符集编码,排序规则 */
create table `account` ( -- 建表
		`id` int(4) not null auto_increment,
		`name` varchar(20) not null,
		`money` decimal(9,2) not null,
		primary key (`id`)
)engine=innodb default charset=utf8


insert into `account` -- 添加数据
(`name`,`money`)
values ('张三',2000),('李四',10000)

set autocommit = 0 -- 关闭自动提交
start transaction  -- 开启一个事务
-- 开始进行sql,事务操作
update `account` set `money` = `money` - 500 where `name`='张三'
update `account` set `money` = `money` + 500 where `name`='李四'

commit -- 提交 (成功) 持久化
rollback -- 回滚 (失败,数据恢复)

set autocommit = 1 -- 开启自动提交
```

| 事务隔离级别               | 脏读 | 不可重复读 | 幻读     | 级别                 |
| -------------------------- | ---- | ---------- | -------- | -------------------- |
| 读未提交(read-uncommitted) | 是   | 是         | 是       | 最低(事务关联程度高) |
| 不可重复读(read-committed) | 否   | 是         | 是       | 较低                 |
| 可重复读(repeatable-read)  | 否   | 否         | 可能出现 | 较高                 |
| 串行化(serializable)       | 否   | 否         | 否       | 最高(事务关联程度低) |

 **脏读** 

指一个事务读取了另外一个事务未提交的数据

 **不可重复读** 

在一个事务内读取表中的某一行数据,多次读取结果不同,(这个不一定是错误,只是某些场合不对)

 **虚读 (幻读)** 

是指在一个事务内读取到了别的事务插入的数据,导致前后读取不一致

# 三大范式

[三大范式](https://blog.csdn.net/qq_40899182/article/details/81706253?ops_request_misc=%7B%22request%5Fid%22%3A%22164579139616780264033159%22%2C%22scm%22%3A%2220140713.130102334.pc%5Fall.%22%7D&request_id=164579139616780264033159&biz_id=0&utm_medium=distribute.pc_search_result.none-task-blog-2~all~first_rank_ecpm_v1~rank_v31_ecpm-1-81706253.pc_search_result_cache&utm_term=三大范式&spm=1018.2226.3001.4187)

 **为什么需要数据规范化?** 

- 信息重复
- 更新异常
- 插入异常

- - 无法正常显示信息

- 删除异常

- - 丢失有效的信息

>  三大范式

 **第一范式 (1 NF)** 

​	原子性 :保证每一列不可再分

 **第二范式(2 NF)** 

​	前提 ;满足第一范式

​	每张表只描述一件事情

 **第三范式 (3 NF)** 

​	前提 :满足第一范式和第二范式

​	第三范式需要确保数据包中的每一列数据都和主键直接相关,不能间接相关

**巴斯范式**

 **规范性和性能的问题** 

​	关联查询的表不得超过三张表

- 考虑商业化的需求和目标,(成本,用户体验)
- 在规范性能的问题的时候,需要适当的考虑一下规范性
- 故意给某些表增加一些冗余的字段(从多表查询中变为单表查询)
- 故意增加一些计算列(从大数据量降低为小数据量的查询:索引)

# 索引

注：基于InnoDB

## 索引是什么

索引是帮助数据库高效获取数据的数据结构

优点：降低查询时间

缺点：增加空间占据，不适用于经常更新的列，增加维护成本。

## 索引的分类

1. 从存储结构上来划分

+ B+
+ 哈希
+ full-index
+ RTree

2. 从应用层次上来划分

+ 普通索引：即一个索引只包含单个列，一个表可以有多个单列索引
+ 唯一索引：索引列的值必须唯一，但允许有空值
+ 复合索引：一个索引包含多个列

3. 从表记录的排列顺序和索引的排列顺序是否一致来划分

+ 聚集索引：表记录的排列顺序和索引的排列顺序一致
+ 非聚集索引：表记录的排列顺序和索引的排列顺序不一致

## 聚集索引和非聚集索引

+ 聚集索引（主键）：表记录的排列顺序和索引的排列顺序一致，即索引的排序和内容的排序顺序一致。
  + 优点
    + 数据访问更快
    + 排序和分组更快
    + 节省io操作
  + 缺点
    + 插入速度严重依赖于插入顺序
    + 更新主键的代价很高
    + 二级索引访问需要两次索引查找
+ 非聚集索引（非主键）：索引的逻辑顺序与磁盘上行的物理存储顺序不同，即索引的排序和内容的排序顺序不一致，因为只是存储索引列和主键，所以要其他数据需要进行回表操作（即通过主键回到聚簇索引查询其他数据）。

## 联合索引

类似于非聚簇索引，只是当左索引相同时，会根据右索引进行排序。

 ## 索引的设计原则

### 哪些情况适合创建索引

1. 字段的数值有唯一性的限制，如学号
2. 频繁作为where查询条件的字段
3. 经常group by 和order by的列（联合索引的需要group的字段在前面，最左前缀原则）
4. update和delete的where条件列
5. distinct字段需要创建索引
6. 多表join连接操作时，创建索引注意事项 
   1. 连接表的数量尽量不要超过3张
   2. 对where条件创建索引
   3. 对用于连接的字段创建索引，字段类型必须一致
7. 使用列的类型小的创建索引
8. 使用字符串前缀创建索引，区分度公式：

```sql
count(distinct left(列名，索引长度)/count(*); -- 修改索引长度,当区分度接近1时候最佳.
```

9. 区分度高(散列性高)的列适合作为索引 
10. 使用最频繁的列放在联合索引的左侧

注意：

1. 在多字段都要创建索引的情况下,联合索引优于单值索引
2. 限制索引创建的数量，尽量不超过6个。

### 哪些情况不适合创建索引

1. 在where中使用不到的字段，不要设置索引
2. 在数据量小的表最好不要使用索引
3. 在大量重复数据的列上不要建立索引
4. 避免对经常更新的表创建过多的索引：字段不要，表要少
5. 不建议用无序的值作为索引
6. 删除不压使用或者很少使用的索引
7. 不要定义冗余或重复的索引：比如联合索引的最左字段和单列索引重复
