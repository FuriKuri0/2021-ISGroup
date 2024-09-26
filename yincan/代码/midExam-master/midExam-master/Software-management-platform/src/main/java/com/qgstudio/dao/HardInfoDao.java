package com.qgstudio.dao;

import com.qgstudio.po.Code;
import com.qgstudio.po.HardInfo;
import com.qgstudio.po.License;
import org.apache.ibatis.annotations.*;
import org.springframework.web.bind.annotation.DeleteMapping;

import java.util.List;


/**
 *  硬件信息dao层
 * @author YC104
 */
public interface HardInfoDao {


    /**
     * 新增硬件信息
     * @param hardInfo :硬件信息
     * @return :返回影响行数
     */

    @Insert("insert into t_hard_info (user_id, owner_name, mac, `cpu`,hard)" +
            " values (#{user_id},#{owner_name},#{mac},#{cpu},#{hard})")
    @Options(useGeneratedKeys = true,keyProperty = "info_id")
    int save(HardInfo hardInfo);


    /**
     * 删除硬件信息
     * @param hardInfo :需要删除的硬件信息对象
     * @return :返回影响的行数
     */
    @Delete("delete from t_hard_info where user_id=#{user_id} and info_id=#{info_id}")
    int delete (HardInfo hardInfo);


    /**
     * 更新硬件信息的机主名称
     * @param hardInfo :需要修改的硬件信息对象
     * @return :返回影响的行数
     */
    @Update("update t_hard_info set owner_name=#{owner_name} where user_id=#{userId} and info_id=#{info_id}")
    int updateOwnerName(HardInfo hardInfo);


    /**
     * 更新硬件信息
     * @param hardInfo :需要更新的硬件信息对象
     * @return :影响的行数
     */
    @Update("update t_hard_info set owner_name=#{owner_name},mac=#{mac},`cpu`=#{cpu},hard=#{hard} where user_id=#{user_id} and info_id=#{info_id}")
    int update(HardInfo hardInfo);


    /**
     * 查询用户所有的硬件信息
     * @param user_id :用户id
     * @return :返回硬件信息集合
     */
    @Select("select * from t_hard_info where user_id=#{user_id}")
    List<HardInfo> getAll(int user_id);


    /**
     * 返回特定硬件信息的机主名
     * @param hardInfo :硬件信息
     * @return :机主名
     */
    @Select("select owner_name from t_hard_info where user_id=#{userId} and  info_id=#{info_id}")
    String getOwnerName(HardInfo hardInfo);

    @Select("select * from t_hard_info where user_id=#{user_id} and owner_name=#{owner_name}")
    HardInfo getByOwnerName(HardInfo hardInfo);

    @Select("select * from t_hard_info where user_id=#{user_id} and mac=#{mac}")
    HardInfo getByMac(HardInfo hardInfo);

    @Select("select * from t_hard_info where user_id=#{user_id} and `cpu`=#{cpu}")
    HardInfo getByCpu(HardInfo hardInfo);

    @Select("select * from t_hard_info where user_id=#{user_id} and hard=#{hard}")
    HardInfo getByHard(HardInfo hardInfo);


    @Select("<script> " +
            "select * from t_hard_info where info_id in " +
            "<foreach collection='infoIds' item='item' open='(' separator=',' close=')'>#{item}</foreach>"+
            "</script>")
    List<HardInfo> getByInfoIds(@Param("infoIds") List<Integer> infoIds);

    @Select("select * from t_hard_info where info_id=#{info_id}")
    HardInfo getByInfoId(int info_id);
}
