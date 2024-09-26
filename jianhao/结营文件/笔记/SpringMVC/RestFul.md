# RestFul风格

Restful就是一个资源定位及资源操作的风格。不是标准也不是协议，只是一种风格。基于这个风格设计的软件可以更简洁，更有层次，更易于实现缓存等机制



例子：

传统方式操作资源：王王需要通过不同的参数去实现不同的效果。请求的格式也变得更加多样

<img src="https://raw.githubusercontent.com/JIaaoooo/ImageHostingService/main/img/202207191850686.png" style="zoom:67%;" />

## RestFul的使用：

```java
@Controller
public class Controller2 {
	//访问hello/1/a 可以获得得到result的信息		method=RequestMethod.GET 表示规定需要用GET的请求方法去请求    
    @RequestMapping(value="/hello/{a}/{b}",method= RequestMethod.GET)	//方法的参数用@PathVariable去注解
    public String  RestFul(@PathVariable int a, @PathVariable String b, Model model){
        String result =a +b;
        model.addAttribute("msg",result);
        return "hello";
    }

}
```

快捷方式：

```
@GetMapping    		表示@RequestMapping(method =RequestMethod.GET)
@PostMapping
@PutMapping
@DeleteMapping
@PatchMapping
```