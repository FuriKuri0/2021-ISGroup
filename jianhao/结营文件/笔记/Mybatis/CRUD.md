# CRUD

## `${}`与`#{}`的区别：

`#{name}`表示取入参对象Student中的name属性，`#{age}`表示取age属性

`${}`常用于 —— 模糊查询的场景：`SELECT * FROM student WHERE name like '%${name}%'`

`${}`不会做参数类型解析，而是仅仅做字符串的拼接

```sql
若入参的Student对象的name属性为zhangsan，则上面那条SQL语句最终分别被解析为：
＄｛｝：SELECT * FROM student WHERE name like '%zhangsan%'
＃｛｝：SELECT * FROM student WHERE name like '%'zhangsan'%'
所以模糊sou
```

#### `${}`存在缺点：

由于`${}`不会做解析，就存在了SQL注入风险



## 使用：

Mapper接口中新增增删改查的方法，

### 注意事项：

1. mapper接口的全限定名，要和mapper.xml的namespace属性一致

2. mapper接口中的方法名要和mapper.xml中的SQL标签的id一致

3. mapper接口中的方法入参类型，要和mapper.xml中SQL语句的入参类型一致

4. mapper接口中的方法出参类型，要和mapper.xml中SQL语句的返回值类型一致

   

在Mapper.xml中新增SQL语句

```xml

<mapper namespace="demo01.dao.UserMapper">

    <select id="getUserList"  resultType="demo01.pojo.User" >
        select * from mybatis.user;
    </select>

<!--    对象的属性，可以直接取出-->
<!--    name即为创建对象时的name-->
    <insert id="insert" parameterType="demo01.pojo.User">
        insert into mybatis.user (id,name,pwd) values (#{id},#{name},#{pwd});
    </insert>

    <delete id="delete" parameterType="int">
        delete from mybatis.user where id = #{id};
    </delete>
</mapper>
```

parameterType：接收的参数类型

resultType：返回的参数类型



执行

```java
 @Test
    public void test(){
        //获得SqlSession对象
        SqlSession sql = MybatisUtils.getSqlSession();
        //执行sql
        UserMapper mapper = sql.getMapper(UserMapper.class);
        //插入方法：
        mapper.insert(new User(3,"feifei","1121"));
        //获取返回值
        List<User> list2 = mapper.getUserList();
        for (User user : list2) {
            System.out.println(user);
        }
        //mapper.delete(1);
        
        //最后记得提交事务，才能进行更改
        sql.commit();
        sql.close();
    }
```

### 注意：增删改要提交事务



## 万能的map：

#### 假设实体类，或者数据库中的表的字段或者参数过多，应该考虑使用Map

mapper接口

```java
void insert_map(Map<Object,Object> map);
List<User> selectWho(Map map);
```

mapper.xml

```xml
<insert id="insert_map" parameterType="map">
    insert into mybatis.user (name,pwd) values (#{username},#{password})
</insert>

<select id="selectWho" parameterType="map" resultType="demo01.pojo.User">
        select * from mybatis.user where name = #{username};
</select>
```

注意：此时value中的`#{}`只需要与map集合中的key值相同名即可，不需要与User对象对应

实现：

```java
@Test
    public void Map_test(){
        //获取SqlSession对象
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        UserMapper mapper = sqlSession.getMapper(UserMapper.class);
        Map map = new HashMap<Object,Object>();
        //map的key值要与Mapper.xml中#{}的一致
        map.put("username","dahuang");
        map.put("password","0521");

        mapper.insert_map(map);
        //记得提交事务
        sqlSession.commit();
        sqlSession.close();
    }

@Test
    public void selectWho_test(){
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        UserMapper mapper = sqlSession.getMapper(UserMapper.class);
        Map map = new HashMap();
        map.put("username","caiqian");
        List<User> users = mapper.selectWho(map);
        for (User user : users) {
            System.out.println(users);
        }
    }
```



## 结果集映射resultMap:

```xml
<resultMap id="UserMap" type="User">
    <!--column数据库中的字段，property实体类中的属性-->
    <result column=" id" property="id"/>
    <result column="name" property="name"/>
    <result column="pwd" property="password"/>
</resultMap>
<select id="getUserById" resultMap="UserMap" parameterType="int">
   /*定义sql*/
   select * from mybatis.user where id = #{id};
```

