package cn.stopyc.controller;



import cn.stopyc.po.User;
import cn.stopyc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * @program: springmvc_demo02
 * @description:
 * @author: stop.yc
 * @create: 2022-07-19 11:25
 **/
//2.定义controller
//2.1 使用@Controller定义bean

@RestController
@RequestMapping("/users")

public class UserController {

    @Autowired
    private UserService userService;

    @PostMapping
    public Result<Integer> save(@RequestBody User user) {
        System.out.println(user);
//        int i = 1/0;
        return userService.login(user.getusername(), user.getPassword());
    }
}
