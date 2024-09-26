package com.qgstudio.dao;

import com.qgstudio.po.Notice;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * @program: Software-management-platform
 * @description: 通知模块持久层
 * @author: stop.yc
 * @create: 2022-07-25 20:26
 **/
public interface NoticeDao {

    /**
     * 插入通知数据,@Options注释使数据插入成功后将自增的id主键赋值给该通知对象
     * 两id为空则为自定义通知
     * @param notice 通知对象
     * @return 返回影响的行数
     * */
    @Insert("insert into t_notice (content,time,software_id,version_id) values (#{content},#{time},#{software_id},#{version_id})")
    @Options(useGeneratedKeys = true,keyProperty = "notice_id")/*@SelectKey(keyProperty = "notice_id", resultType = int.class, before = false,
            statement = "select LAST_INSERT_ID()"
    )*/
    int save (Notice notice);

    /**
     * 修改通知
     * @param notice 通知对象
     * @return 返回影响的行数
     */
    @Update("UPDATE t_notice SET content=#{content},time=#{time} where notice_id=#{notice_id}")
    public int update(Notice notice);

    /**
     * 根据id删除通知
     * @param notice_id 用户id
     * @return 返回影响的行数
     */
    @Delete("DELETE FROM t_notice WHERE notice_id = #{notice_id}")
    public int delete(int notice_id);

    /**
     * 通过notice_id查询某条通知
     * @param notice_id 通知id
     * @return 返回查询到的通知对象
     * */
    @Select("select * from t_notice where notice_id = #{notice_id}")
    Notice getNoticeByNoticeId(int notice_id);

    /**
     * 通过version_id查询某条通知
     * @param version_id 通知id
     * @return 返回查询到的通知对象
     * */
    @Select("select * from t_notice where version_id = #{version_id}")
    Notice getNoticeByVersionId(int version_id);

    /**
     * 查询所有通知
     * @return 返回查询到的通知对象集
     */
    @Select("SELECT * FROM t_notice")
    public List<Notice> getAll();


}
