package com.qgstudio.controller;

import com.qgstudio.po.Code;
import com.qgstudio.po.License;
import com.qgstudio.service.CodeService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @program: Software-management-platform
 * @description:
 * @author: stop.yc
 * @create: 2022-07-30 20:43
 **/

@RestController
@RequestMapping(value = "/codes" ,produces =  "application/json;charset=UTF-8")
public class CodeController {

    @Autowired
    private CodeService codeService;


    @PostMapping
    Result<Code> save(@RequestBody Code code) throws Exception {
        return codeService.save(code);
    }


    @PutMapping
    Result<Code> update(@RequestBody Code code) throws Exception {
        return codeService.update(code);
    }

    @GetMapping("/{id}")
    Result<List<Code>> getAll(@PathVariable int id) throws Exception {
        return codeService.getAll(id);
    }

}
