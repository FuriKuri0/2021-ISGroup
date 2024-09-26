package com.qgstudio.controller;

import com.qgstudio.po.HardInfo;
import com.qgstudio.po.License;
import com.qgstudio.service.HardInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.List;

/**
 * @program: Software-management-platform
 * @description:
 * @author: stop.yc
 * @create: 2022-07-28 16:12
 **/
@RestController
@RequestMapping(value = "/hardInfos",produces = "application/json;charset=UTF-8")
public class HardInfoController {

    @Autowired
    private HardInfoService hardInfoService;

    @PostMapping
    Result<HardInfo> save(@RequestBody HardInfo hardInfo) throws Exception {
        return hardInfoService.saveHardInfo(hardInfo);
    }


    @PutMapping
    Result<HardInfo> update(@RequestBody HardInfo hardInfo) throws IOException {
        return hardInfoService.update(hardInfo);
    }

    @GetMapping
    Result<List<HardInfo>> selectAll(@RequestParam int user_id) {
        return hardInfoService.getAll(user_id);
    }


    @DeleteMapping
    public Result<Object> delete(@RequestBody HardInfo hardInfo){
        return hardInfoService.delete(hardInfo);
    }
}
