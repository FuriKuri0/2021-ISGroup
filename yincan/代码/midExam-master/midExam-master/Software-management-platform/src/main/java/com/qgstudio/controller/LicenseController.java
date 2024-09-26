package com.qgstudio.controller;

import com.qgstudio.po.License;
import com.qgstudio.service.LicenseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.List;

/**
 * @program: Software-management-platform
 * @description: 许可证及授权码模块表现层
 * @author: stop.yc
 * @create: 2022-07-27 21:57
 **/

@RestController
@RequestMapping(value = "/licenses" ,produces = "application/json;charset=UTF-8")
public class LicenseController {

    @Autowired
    private LicenseService licenseService;


    @PostMapping
    Result<License> save(@RequestBody License license) throws Exception {
        return licenseService.save(license);
    }


    @GetMapping
    Result<List<License>> selectAll(@RequestParam int user_id) {
        return licenseService.selectAll(user_id);
    }


    @PutMapping
    Result<License> upgrade(@RequestBody License license) throws IOException {
        return licenseService.upgrade(license);
    }
}
