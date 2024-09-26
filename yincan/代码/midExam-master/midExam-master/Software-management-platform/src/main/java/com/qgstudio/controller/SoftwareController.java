package com.qgstudio.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.qgstudio.po.Software;
import com.qgstudio.po.User;
import com.qgstudio.po.Version;
import com.qgstudio.service.SoftwareService;
import com.qgstudio.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.List;
import java.util.Map;

/**
 * @program: Software-management-platform
 * @description: 软件模块表现层
 * @author: ouroborosno2
 * @create: 2022-07-25 22:11
 **/
@RestController
@RequestMapping(value = "/softwares",produces = "application/json;charset=UTF-8")
public class SoftwareController {
    @Autowired
    private SoftwareService softwareService;

    @PostMapping
    public Result add(@RequestBody String json) throws IOException {
        JSONObject jsonObject= JSON.parseObject(json);
        Software software = jsonObject.getObject("software",Software.class);
        Version version =jsonObject.getObject("version",Version.class);
        return softwareService.add(software,version);
    }

    @PutMapping
    public Result update(@RequestBody Software software) {
        return softwareService.update(software);
    }

    @DeleteMapping("/{id}")
    public Result delete(@PathVariable Integer id) {
        return softwareService.delete(id);
    }

    @GetMapping("/{id}")
    public Result getById(@PathVariable Integer id) {
        return softwareService.getById(id);
    }

    @PostMapping("/ids")
    public Result getByIds(@RequestBody Map<String,Object> map) {
        return softwareService.getByIds((List<Integer>) map.get("ids"));
    }

    /**根据软件名模糊查找软件*/
    @GetMapping("/search")
    public Result getBySoftware_name(String name,Boolean isVague){
        return softwareService.getBySoftware_name(name,isVague);
    }

    /**查询同分类的所有软件*/
    @GetMapping("/group_{id}")
    public Result getByGroup(@PathVariable Integer id) {
        return softwareService.getByGroup(id);
    }

    @GetMapping
    public Result getAll() {
        return softwareService.getAll();
    }
}
