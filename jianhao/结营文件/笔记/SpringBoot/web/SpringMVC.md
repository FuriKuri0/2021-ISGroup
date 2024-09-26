# SpringMVC

## 自定义视图解析器

方法：需要在@Configuration的类实现WebMvcConfigurer，并复写调用addViewControllers的方法

```java
//如果要扩展SpringMVC，官方建议如下操作：
@Configuration
public class MyConfig implements WebMvcConfigurer {

    //视图转跳,"jian"为一个urlPath，“test”为视图的名字，访问jian就会跳转到test页面
    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/jian").setViewName("test");
    }
}
```

#### 注意：不能加上@EnableWebMvc，其导入一个DelegatingWebMvcConfiguration，作用是从容器中获取所有的WebMvcConfig