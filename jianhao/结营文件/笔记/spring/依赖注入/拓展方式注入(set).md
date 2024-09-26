

## 都依赖于set方法

常量注入

```xml
<bean id="student" class="pojo.Student">
	<property name = "name" value="小明"/>
</bean>
```

Bean注入

```xml
<bean id="student" class="pojo.Student">
	<!--由于address为一个引用类型,故使用ref  -->
	<property name = "address"  ref="address"/>
</bean>
```

数组注入	`<array>`

```xml
<bean id="student" class="pojo.Student">
	<proerty name = "books">
		<array>
			<value>水浒传</value>
			<value>三国演义</value>
		</array>
</bean>
```

List注入	`<list>`

```xml
<bean id="student" class="pojo.Student">
	<property name="hobbys">
		<list>
			<value>打球</value>
			<value>听歌</value>
		</list>
	</property>
</bean>
```

Map注入	`<map>  <entry key="" value=""/>`

```xml
<bean id="student" class="pojo.Student">
	<property name="card">
     	<map>
         	<entry key="中国邮政" value="456456456465456"/>
        	 <entry key="建设" value="1456682255511"/>
     	</map>
 	</property>
</bean>
```

set注入 `<set>`

```xml
<bean id="student" class="pojo.Student">
	 <property name="games">
    	 <set>
         	<value>LOL</value>
         	<value>BOB</value>
     	</set>
	 </property>
</bean>
```

Null注入 `<null/>`

```xml
<bean id="student" class="pojo.Student">
	<property name ="wife">
			<null/>
	</property>
</bean>
```

Properties 注入

```xml
<bean id="student" class="pojo.Student">
	 <property name="info">
    	 <props>
        	 <prop key="学号">20190604</prop>
         	<prop key="性别">男</prop>
         	<prop key="姓名">小明</prop>
    	 </props>
 	</property>
</bean>
```

