package com.qgstudio.service.impl;

import com.qgstudio.controller.Result;
import com.qgstudio.controller.ResultEnum;
import com.qgstudio.dao.NoticeAndUserDao;
import com.qgstudio.dao.NoticeDao;
import com.qgstudio.po.Notice;
import com.qgstudio.service.NoticeAndUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * @program: Software-management-platform
 * @description:
 * @author: stop.yc
 * @create: 2022-07-26 20:26
 **/

@Service
@Transactional
public class NoticeAndUserServiceImpl implements NoticeAndUserService {

    @Autowired
    private NoticeAndUserDao noticeAndUserDao;
    @Autowired
    private NoticeDao noticeDao;

    @Override
    public int bind(int notice_id, List<Integer> ids) {
        return noticeAndUserDao.addUserAndNotice(notice_id,ids);
    }

    @Override
    public Result<Object> deleteById(int notice_id, int user_id) {
        ResultEnum resultEnum;
        if(notice_id==0||user_id==0){
            resultEnum = ResultEnum.USER_DEL_NOTICE_ERR;
        }else {
            int i = noticeAndUserDao.deleteById(notice_id, user_id);
            resultEnum = i != 0 ? ResultEnum.USER_DEL_NOTICE_OK : ResultEnum.USER_DEL_NOTICE_ERR;
        }
        return new Result<>(resultEnum.getCode(),resultEnum.getMsg());
    }

    @Override
    public Result<Object> deleteByIds(List<Integer> notice_id, int user_id) {
        int i = noticeAndUserDao.deleteByIds(notice_id, user_id);

        ResultEnum resultEnum = i != 0 ? ResultEnum.USER_DEL_NOTICE_OK : ResultEnum.USER_DEL_NOTICE_ERR;

        return new Result<>(resultEnum.getCode(),resultEnum.getMsg());
    }

    @Override
    public Result<List<Notice>> getByUserId(int user_id) {
        List<Integer> idList = noticeAndUserDao.getByUserId(user_id);
        List<Notice> noticeList = new ArrayList<>();
        for(Integer id : idList){
            Notice notice = noticeDao.getNoticeByNoticeId(id);
            if(notice == null){
                //空则说明总通知库已不存在这条通知,这边也要对应地删除
                noticeAndUserDao.deleteById(id,user_id);
            }else{
                noticeList.add(notice);
            }
        }
        ResultEnum result = !noticeList.isEmpty() ? ResultEnum.USER_GET_NOTICE_OK : ResultEnum.USER_GET_NOTICE_NONE;
        return new Result(result.getCode(), result.getMsg(),noticeList);
    }
}
