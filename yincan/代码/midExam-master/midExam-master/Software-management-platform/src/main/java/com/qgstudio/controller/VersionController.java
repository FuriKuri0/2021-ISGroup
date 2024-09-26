package com.qgstudio.controller;

import com.qgstudio.po.Version;
import com.qgstudio.service.VersionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;

/**
 * @program: Version-management-platform
 * @description: 版本模块表现层
 * @author: ouroborosno2
 * @create: 2022-07-25 22:11
 **/
@RestController
@RequestMapping(value = "/versions",produces = "application/json;charset=UTF-8")
public class VersionController {
    @Autowired
    private VersionService versionService;

    @PostMapping
    public Result add(@RequestBody Version version) throws IOException {
        return versionService.add(version);
    }

    @PutMapping
    public Result update(@RequestBody Version version) throws IOException {
        return versionService.update(version);
    }

    @DeleteMapping("/{id}")
    public Result delete(@PathVariable Integer id) {
        return versionService.delete(id);
    }

    @GetMapping("/{id}")
    public Result getById(@PathVariable Integer id) {
        return versionService.getById(id);
    }

    @GetMapping("/versionInf")
    public Result getByVersionInf(Integer id,String versionInf) {
        return versionService.getByVersionInf(id,versionInf);
    }

    @GetMapping("/latest_{id}")
    public Result getLatestBySoftware_id(@PathVariable Integer id) {
        return versionService.getLatestBySoftware_id(id);
    }

    @GetMapping("/software_{id}")
    public Result getAllBySoftware_id(@PathVariable Integer id) {
        return versionService.getAllBySoftware_id(id);
    }

    @GetMapping
    public Result getAll() {
        return versionService.getAll();
    }
}
