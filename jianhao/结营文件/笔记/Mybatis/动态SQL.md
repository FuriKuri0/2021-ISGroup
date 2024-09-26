# 动态SQL

- ### if

- ### choose (when, otherwise)

- ### trim (where, set)

- ### foreach

## if标签：

```xml
<select id="findActiveBlogLike"
     resultType="Blog">
  SELECT * FROM BLOG WHERE state = ‘ACTIVE’
  <if test="title != null">
    AND title like #{title}
  </if>
  <if test="author != null ">
    AND author like #{author}
  </if>
</select>
```

存在问题：

```xml
<select id="findActiveBlogLike"
     resultType="Blog">
  SELECT * FROM BLOG WHERE
  <if test="title != null">
     title like #{title}
  </if>
  <if test="author != null ">
    AND author like #{author}
  </if>
</select>
```

`当第二个if成立，第一个不成立后发现，SQL语句错误，WHERE AND

此时where标签可解决，即使第一个if不成立，只成立第二个if，会自动还是拿出第二个AND

### where标签

```xml
<select id="findActiveBlogLike"
     resultType="Blog">
  SELECT * FROM BLOG 
  <where>
      <if test="title != null">
         title like #{title}
      </if>
      <if test="author != null ">
        AND author like #{author}
      </if>
   </where>   
</select>
```

可用`trim标签`代替

```xml
<trim prefix="WHERE" prefixOverrides="AND | OR">
   ...
</trim>
```



## choose、when、otherwise标签

```xml
<select id="findActiveBlogLike"
     resultType="Blog">
  SELECT * FROM BLOG WHERE state = ‘ACTIVE’
  <choose>
    <when test="title != null">
      AND title = #{title}
    </when>
    <when test="author != null ">
      AND author = #{author}
    </when>
      //如果title、author为空，那views不能为空，要执行otherwise
    <otherwise>
      AND views = #{views}
    </otherwise>
  </choose>
</select>
```



### set标签

现有问题：

```xml
<update id="updateBlog" parameterType="map">
	update blog
	<if test="title !=null">
		tile =#{title},
	</if>
    <if test = "author != null">
    	author = #{author}
    </if>
    where id =#{id}
</update>
```

当第二个if不成立后，SQL语句出现问题，多了一个逗号

改进：加入set标签，set自动去除多余的逗号

```xml
<update id="updateBlog" parameterType="map">
	update blog
	<set>
	<if test="title !=null">
		tile =#{title},
	</if>
    <if test = "author != null">
    	author = #{author}
    </if>
    </set>
    where id =#{id}
</update>
```

可用`trim`标签代替

```xml
<trim prefix="SET" prefixOverrides=",">
   ...
</trim>
```

## SQL片段（实现代码复用 ）

```
<sql id=" 方法名 ">
	...
</sql?
```

### 使用场景：

1. 抽取公共部分、
2. 在有需要的位置使用`<include>`标签引用即可

```xml
<select id="findUser" parameterType="user" resultType="user">
	SELECT * FROM user
	<include refid="whereClause"/>
</select>

<sql id="whereClause">
     <where>
         <if test user != null>
         	AND username like '%${user.name}%'
         </if>
     </where>
</sql>
```



## foreach：

```xml
<select id="selectPostIn" resultType="domain.blog.Post" parameterType="map">
  SELECT * FROM user
   <where>
    <foreach item="id"  collection="list"
        open="ID in (" separator="or" close=")" nullable="true">
        id =  #{item}
    </foreach>
  </where>
</select>

sql中时使用
SqlSession sqlSession = MybatisUtils.getSqlSession();
StudentMapper mapper = sqlSession.getMapper(UserMapper.class);
Hash map = new HashMap();
ArrayList<Integer> list =  new ArrayList<Integer>();
list.add(1);
list.add(2);
map.put("list",list);
Post post  = mapper.selectPostIn(map);				//此时相当于执行了Sql：select * from user where (id=1 or id=2)
    								
```

说明：例如`select * from user where 1=1 and (id=1 or id=2 or id=3)`

则`#{item}`就表示为(id=1 or id=2 or id=3)，开头为"and ("，结尾为" ) "，分隔符为"or "

