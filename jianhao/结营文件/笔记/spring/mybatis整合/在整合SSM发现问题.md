整合SpringMVC后

如果将mapper在spring-dao中导入（不在My-batis-config.xml）这样写

![](https://raw.githubusercontent.com/JIaaoooo/ImageHostingService/main/img/202207191525201.png)

启动发现报错：

```
 Failed to parse mapping resource: 'ServletContext resource [/com/dao/student/studentMapper.xml]'; nested exception is java.io.FileNotFoundException: Could not open ServletContext resource [/com/dao/student/studentMapper.xml]
```





此时将mapper放回My-batis-config.xml

```
<mappers>
        <mapper class="com.dao.student.studentMapper"/>
    </mappers>
```

则能正常开启
