package com.qgstudio.controller;

import com.qgstudio.po.Notice;
import com.qgstudio.po.Version;
import com.qgstudio.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.Date;
import java.util.List;

/**
 * @program: Software-management-platform
 * @description: 通知Controller
 * @author: stop.yc
 * @create: 2022-07-25 21:46
 **/
@RestController
@RequestMapping(value = "/notices",produces = "application/json;charset=UTF-8")
public class NoticeController {

    @Autowired
    private NoticeService noticeService;

    @PostMapping
    Result addCustomNotice(@RequestParam String content) {
        return noticeService.addCustomNotice(content);
    }

    @PutMapping
    Result update(@RequestBody Notice notice) {
        return noticeService.update(notice);
    }

    @DeleteMapping("/{id}")
    Result delete(@PathVariable int id) {
        return noticeService.delete(id);
    }

    @GetMapping("/{id}")
    Result getNoticeById(@PathVariable("id") int notice_id) {
        return noticeService.getNoticeById(notice_id);
    }

    @GetMapping
    Result<List<Notice>> getAll() {
        return noticeService.getAllNotice();
    }

}
