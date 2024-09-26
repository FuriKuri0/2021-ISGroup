## 依赖：

```
        <dependency>
            <groupId>io.springfox</groupId>
            <artifactId>springfox-swagger2</artifactId>
            <version>2.9.2</version>
        </dependency>
        <dependency>
            <groupId>io.springfox</groupId>
            <artifactId>springfox-swagger-ui</artifactId>
            <version>2.8.0</version>
        </dependency>
```

## 构建swagger配置类。我选择构建的位置是主目录下，目录并不会对运行结果产生影响，但整个项目只

## 能有一个swagger配置类

```java
import io.swagger.annotations.Api;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;
 
/**
 * Swagger使用的配置文件
 */
@Configuration
@EnableSwagger2
public class Swagger2Configuration {
    @Bean
    public Docket createRestApi(){
        return new Docket(DocumentationType.SWAGGER_2)
                .apiInfo(apiInfo())		//api基本信息的配置，比如填充文档、项目版本号
                .select()
                .apis(RequestHandlerSelectors.withClassAnnotation(Api.class))		//用什么方式扫描
                .paths(PathSelectors.any())			//扫描接口路径，这里是全扫
                .build();
    }
    
    
 
    //基本信息的配置，信息会在api文档上显示
    private ApiInfo apiInfo(){
        return new ApiInfoBuilder()
                .title("测试的接口文档")
                .description("相关接口的文档")
                .termsOfServiceUrl("http://localhost:8080/hello")
                .version("1.0")
                .build();
    }
}
```

![](https://raw.githubusercontent.com/JIaaoooo/ImageHostingService/main/img/swagger.png)

@Api表示选择扫描的类

@ApiOperation用于注明接口，value是接口的解释

@Api注解函数里面的参数，name一般要与参数名一致，value是解释，required是是否参数必须

```java
@Controller
@Api
public class HelloController {
    @ApiOperation(value = "你好")
    @ResponseBody
    @PostMapping("/hello")
    public String hello(@ApiParam(name="name",value="对话人",required=true)String name){
        return name+", hello";
    }
}
```

