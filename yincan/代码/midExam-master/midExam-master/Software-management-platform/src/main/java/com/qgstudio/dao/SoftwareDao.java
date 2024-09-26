package com.qgstudio.dao;

import com.qgstudio.po.Software;
import com.qgstudio.po.User;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * @program: Software-management-platform
 * @description: 软件模块持久层
 * @author: OuroborosNo2
 * @create: 2022-07-24 20:26
 **/
public interface SoftwareDao {
    /**
     * 插入软件数据,@Options注释使数据插入成功后将自增的id主键赋值给该软件对象
     * @param software 软件对象
     * @return 返回影响的行数
     * */
    @Insert("INSERT INTO t_software(software_name,`desc`,group_id) VALUES(#{software_name},#{desc},#{group_id})")
    @Options(useGeneratedKeys = true,keyProperty = "software_id",keyColumn = "software_id")
    int save(Software software);

    /**
     * 修改软件数据
     * @param software 软件对象
     * @return 返回影响的行数
     * */
    @Update("UPDATE t_software SET software_name=#{software_name},`desc`=#{desc},group_id=#{group_id} WHERE software_id=#{software_id}")
    int update(Software software);

    /**
     * 根据软件id删除软件数据
     * @param software_id 软件id
     * @return 返回影响的行数
     * */
    @Delete("DELETE FROM t_software WHERE software_id = #{software_id}")
    int delete(int software_id);

    /**
     * 根据软件id查询软件数据
     * @param software_id 软件id
     * @return 查询到的software对象
     * */
    @Select("SELECT * FROM t_software WHERE software_id = #{software_id}")
    Software getById(int software_id);

    /**
     * 多个id批量查询多个软件
     * @param software_ids 软件id集
     * @return 返回查询到的软件集
     * */
    @Select("<script> " +
            "select * from " + "t_software " +
            "where software_id in (" +
            "<foreach collection='ids' index='index' item='item' separator=','> "
            +
            "#{item}"
            +
            "</foreach> " +
            ")" +
            "</script>")
    List<Software> getByIds (@Param("ids") List<Integer> software_ids);

    /**
     * 通过软件名模糊/精确查询
     * @param software_name 软件名
     * @return 查询到的软件集
     * */
    @Select("SELECT * FROM t_software WHERE software_name LIKE #{software_name}")
    List<Software> getBySoftware_name(String software_name);

    /**
     * 查询同类型的软件
     * @param group_id 类型id
     * @return 查询到的软件集
     */
    @Select("SELECT * FROM t_software WHERE group_id = #{group_id}")
    List<Software> getByGroup(int group_id);

    /**
     * 查询所有软件
     * @return 查询到的软件集
     */
    @Select("SELECT * FROM t_software")
    List<Software> getAll();

}
