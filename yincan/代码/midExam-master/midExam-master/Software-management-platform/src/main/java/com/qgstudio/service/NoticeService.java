package com.qgstudio.service;

import com.qgstudio.controller.Result;
import com.qgstudio.po.Notice;
import com.qgstudio.po.Software;
import com.qgstudio.po.User;
import com.qgstudio.po.Version;
import org.apache.ibatis.annotations.Select;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.util.List;

/**
 * @program: Software-management-platform
 * @description:
 * @author: stop.yc
 * @create: 2022-07-27 09:35
 **/
public interface NoticeService {

    /**
     * 当发行软件或者更新版本时发送通知
     * @param version :版本信息(第一代或者最新)
     * @param updateOrReleaseStr (是更新的还是发行的,选择,更新或者发行(自定义))
     * @return :返回通知类结果集
     */

    Result addNotice (Version version,String updateOrReleaseStr) throws IOException;

    /**
     * 当发行软件或者更新版本时发送通知
     * @param content :通知内容
     * @return :返回通知类结果集
     */
    Result addCustomNotice (String content);

    /**
     * 修改通知
     * @param notice
     * @return 结果集
     */
    Result update(Notice notice);

    /**
     * 根据id删除通知
     * @param id
     * @return 结果集
     */
    Result delete(Integer id);

    /**
     * 通过id查询某条通知
     * @param notice_id 通知id
     * @return 结果集
     * */
    Result<Notice> getNoticeById(int notice_id);

    /**
     * 获取所有的通知信息
     * @return :返回一个通知集合的结果集
     */
    Result<List<Notice>> getAllNotice();

   }
