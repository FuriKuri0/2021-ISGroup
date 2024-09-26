package com.qgstudio.service.impl;

import com.qgstudio.controller.Result;
import com.qgstudio.controller.ResultEnum;
import com.qgstudio.dao.*;
import com.qgstudio.po.Notice;
import com.qgstudio.po.Software;
import com.qgstudio.po.Version;
import com.qgstudio.service.NoticeService;
import com.qgstudio.util.TimeUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.io.IOException;
import java.util.Date;
import java.util.List;

/**
 * @program: Software-management-platform
 * @description: 通知service的实现类
 * @author: stop.yc
 * @create: 2022-07-25 20:42
 **/

@Service
@Transactional
public class NoticeServiceImpl implements NoticeService {

    @Autowired
    private NoticeDao noticeDao;

    @Autowired
    private SoftwareDao softwareDao;

    @Autowired
    private VersionDao versionDao;

    @Autowired
    private UserDao userDao;

    @Autowired
    private NoticeAndUserDao noticeAndUserDao;


    @Override
    @Transactional(propagation = Propagation.NESTED,rollbackFor = Exception.class)
    public Result addNotice(Version version,String updateOrReleaseStr) throws IOException {
        //这里拿到的version是刚刚插入，返回了id的
        //1.一个通知的内容,需要包含,软件名,软件信息,软件版本信息,通知时间
        StringBuilder content = new StringBuilder("");

        //2.通过版本信息获取软件信息
        Software software = softwareDao.getById(version.getSoftware_id());

        //3.需要软件描述,和版本信息
        String desc = software.getDesc();
        String software_name = software.getSoftware_name();
        String versionDesc = version.getDesc();
        String versionInf = version.getVersionInf();

        //4.获取网络时间
        Date websiteDatetime = TimeUtils.getWebsiteDatetime();

        //5.拼接字符串,形成通知内容.
        content.append(software_name).append(updateOrReleaseStr).append(versionInf).append(",").append(versionDesc).append(",").append("点击跳转~");

        System.out.println(content);
        System.out.println(websiteDatetime);

        //6.调用dao,新增notice,notice_id自增，随便填个0
        Notice notice = new Notice(0,content.toString(), websiteDatetime, software.getSoftware_id(),version.getVersion_id());

        ResultEnum result = noticeDao.save(notice) != 0 ? ResultEnum.SUCCESS : ResultEnum.SERVER_INTERNAL_ERROR;

        //7.新增了一条notice后,需要给全部人都发一条消息一个是离线消息,一个在线消息.

        //7.1离线消息.
        //首先获取全部的用户id
        List<Integer> allId = userDao.getAllId();
        //将这条新通知发给全部的用户,不用事务,发失败了没关系
        if (!allId.isEmpty()){
            int i = noticeAndUserDao.addUserAndNotice(notice.getNotice_id(), allId);
        }


        return new Result<>(result.getCode(),result.getMsg());
    }

    @Override
    public Result addCustomNotice(String content) {
        Notice notice = new Notice(content,new Date());
        ResultEnum result = noticeDao.save(notice) != 0 ? ResultEnum.NOTICE_SAVE_OK : ResultEnum.NOTICE_SAVE_ERR;

        //首先获取全部的用户id
        List<Integer> allId = userDao.getAllId();
        //将这条新通知发给全部的用户,不用事务,发失败了没关系
        if (!allId.isEmpty()){
            noticeAndUserDao.addUserAndNotice(notice.getNotice_id(), allId);
        }

        return new Result(result.getCode(), result.getMsg());
    }

    @Override
    public Result update(Notice notice) {
        notice.setTime(new Date());
        ResultEnum result = noticeDao.update(notice) !=0 ? ResultEnum.NOTICE_UPDATE_OK : ResultEnum.NOTICE_UPDATE_ERR;
        return new Result(result.getCode(),result.getMsg());
    }

    @Override
    public Result delete(Integer id) {
        ResultEnum result = noticeDao.delete(id)!=0 ? ResultEnum.NOTICE_DELETE_OK : ResultEnum.NOTICE_DELETE_OK;
        //要把用户那里的通知也同步删了,但是在这里做要查全表,不太好,所以做成查询用户通知时,若通过notice_id找不到,就删除.
        return new Result(result.getCode(),result.getMsg());
    }

    @Override
    public Result<Notice> getNoticeById(int notice_id) {
        Notice notice = noticeDao.getNoticeByNoticeId(notice_id);
        ResultEnum result = notice!=null ? ResultEnum.NOTICE_GET_OK : ResultEnum.NOTICE_GET_ERR;
        return new Result<>(result.getCode(),result.getMsg(),notice);
    }

    @Override
    public Result<List<Notice>> getAllNotice() {
        List<Notice> notices = noticeDao.getAll();
        ResultEnum result = !notices.isEmpty() ? ResultEnum.NOTICE_GET_OK : ResultEnum.NOTICE_GET_ERR;
        return new Result<>(result.getCode(),result.getMsg(),notices);
    }


}
