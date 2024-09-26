package com.qgstudio.service;

import com.qgstudio.controller.Result;
import com.qgstudio.po.Notice;

import java.util.List;
/**
 * @program: Software-management-platform
 * @description:
 * @author: stop.yc
 * @create: 2022-07-27 09:35
 **/
public interface NoticeAndUserService {

     /**
      *将某条通知与一些用户绑定
      * @param notice_id
      * @param ids
      * @return
      */
     int bind (int notice_id, List<Integer> ids);

     /**
      *删除用户通知
      * @param notice_id 通知id
      * @param user_id 用户id
      * @return 结果集
      */
     Result deleteById (int notice_id, int user_id);

     /**
      *批量删除用户通知
      * @param notice_id 通知id
      * @param user_id 用户id
      * @return 结果集
      */
     Result deleteByIds(List<Integer> notice_id, int user_id);


     /**
      * 根据id查询某用户通知库里的所有通知,若某条查不到就删除
      * @param user_id
      * @return 结果集
      */
     Result<List<Notice>> getByUserId(int user_id);

}
