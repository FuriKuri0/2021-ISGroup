# 条件构造器

1. ## AbstractWrapper

   QueryWrapper 和  UpdateWrapper的父类，用于生成sql的where条件

2. ## QueryWrapper

   可以通过 `new QueryWrapper().lambda()` 方法获取

3. ## UpdateWrapper

    可以通过 `new UpdateWrapper().lambda()` 方法获取

## allEq

```java
allEq(Map<R, V> params)
allEq(Map<R, V> params, boolean null2IsNull)
allEq(boolean condition, Map<R, V> params, boolean null2IsNull)
```

## eq  =

```java
eq(R column, Object val)
eq(boolean condition, R column, Object val)
```

## ne	不等于 <>

```java
ne(R column, Object val)
ne(boolean condition, R column, Object val)
```

## ge	大于等于	>=

```java
ge(R column, Object val)
ge(boolean condition, R column, Object val)
```

## gt 	大于	>

```java
gt(R column, Object val)
gt(boolean condition, R column, Object val)
```

## It	小于 <

```java
lt(R column, Object val)
lt(boolean condition, R column, Object val)
```

## Ie	小于等于

```java
le(R column, Object val)
le(boolean condition, R column, Object val)
```

## between  值1 AND 值2

```java
between(R column, Object val1, Object val2)
between(boolean condition, R column, Object val1, Object val2)
```

## NOT BETWEEN 值1 AND 值2

```java
notBetween(R column, Object val1, Object val2)
notBetween(boolean condition, R column, Object val1, Object val2)
```

## LIKE '%值%'

```java
like(R column, Object val)
like(boolean condition, R column, Object val)
```

## NOT LIKE '%值%'

```java
notLike(R column, Object val)
notLike(boolean condition, R column, Object val)
```





# 详细查询文档

Mybatis-plug官方文档

<a>[条件构造器 | MyBatis-Plus](https://www.mybatis-plus.com/guide/wrapper.html#abstractwrapper)</a>