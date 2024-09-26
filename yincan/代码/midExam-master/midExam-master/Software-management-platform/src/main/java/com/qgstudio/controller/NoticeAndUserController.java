package com.qgstudio.controller;

import com.qgstudio.po.Notice;
import com.qgstudio.service.NoticeAndUserService;
import com.qgstudio.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * @program: Software-management-platform
 * @description:
 * @author: stop.yc
 * @create: 2022-07-26 22:55
 **/

@RestController
@RequestMapping(value = "/notices_user", produces = "application/json;charset=UTF-8")
public class NoticeAndUserController {

    @Autowired
    private NoticeAndUserService noticeAndUserService;

    @GetMapping("/{id}")
    public Result<List<Notice>> getByUserId(@PathVariable("id") int user_id){
        return noticeAndUserService.getByUserId(user_id);
    }

    @DeleteMapping("/ids")
    public Result deleteByIds(@RequestBody Map<Integer,List<Integer>> ids_userId) {
        Set<Integer> integers = ids_userId.keySet();
        //初始化
        int key = 0;
        List<Integer> notice_ids = null;

        for (Integer integer : integers) {
            key = integer;
            notice_ids = ids_userId.get(integer);
        }

        return noticeAndUserService.deleteByIds(notice_ids,key);

    }

    @DeleteMapping("/id")
    public Result deleteById(@RequestBody Map<Integer, Integer> notice_idAndUser_id) {

        Set<Integer> integers = notice_idAndUser_id.keySet();
        //初始化
        Integer key = 0;
        Integer value = 0;
        //实际上只有一个元素
        for (Integer integer : integers) {
            key = integer;
            value = notice_idAndUser_id.get(integer);
        }
        return noticeAndUserService.deleteById(key,value);

    }
}
