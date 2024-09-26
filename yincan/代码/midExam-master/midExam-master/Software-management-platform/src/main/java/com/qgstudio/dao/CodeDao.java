package com.qgstudio.dao;

import com.qgstudio.po.Code;
import com.qgstudio.po.HardInfo;
import com.qgstudio.po.License;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * 授权码对象
 * @author YC104
 */
public interface CodeDao {


    /**
     * 新增授权码
//     * @param code :授权码对象
//     * @return :返回影响的行数
//     */
//    @Insert("insert into t_code (license_id, owner_name, mac, cpu,hard, code, user_id)" +
//            " values (#{license_id},#{owner_name},#{mac},#{cpu},#{hard},#{code},#{user_id})")
//    @Options(useGeneratedKeys = true,keyProperty = "code_id")
//    int save(Code code);
//
//
//    /**
//     * 通过用户id和许可证id获取下面授权码对象集合
//     * @param user_id :用户id
//     * @param license_id:许可证id
//     * @return :返回授权码集合对象
//     */
//    @Select("select * from t_code where  user_id = #{user_id} and license_id = #{license_id} ")
//    List<Code> getAllByLicenseIdAndUserId (@Param("user_id") int user_id, @Param("license_id") int license_id);
//
//
//    /**
//     * 当许可证升级后,授权码需要更新
//     * @param code :传进来的授权码对象
//     * @return :返回影响的行数
//     */
//    @Update("update t_code set code=#{code} where user_id = #{user_id} and license_id = #{license_id}  ")
//    int upgrade(Code code);
//
//    /**
//     * 查询一张许可证下有多少条授权码
//     * @param user_id :用户id
//     * @param license_id :许可证id
//     * @return :返回查询的条数
//     */
//    @Select("select count(*) from t_code where user_id = #{user_id} and license_id = #{license_id} ")
//    int getCount(@Param("user_id") int user_id,@Param("license_id") int license_id);


    /**
     * 检查硬件信息是否已经授权
     * @param hardInfo :硬件信息
     * @return :返回code对象
     */
    @Select("select * from t_code where user_id=#{user_id} and info_id=#{info_id}")
    List<Code> getByUserIdAndInfoId(HardInfo hardInfo);


    @Insert("<script> " +
            "insert into " + "t_notice_user" +
            " (" + "notice_id,user_id" + ") " +
            "values " +
            "<foreach collection='ids' index='index' item='item' separator=','> "
            +
            "(#{notice_id},#{item})"
            +
            "</foreach> " +
            "</script>")
    int addUserAndNotice (@Param("notice_id") int notice_id,@Param("ids") List<Integer> user_ids);


    @Select("<script> " +
            "select info_id from t_code where license_id in " +
            "<foreach collection='licenses' item='item' open='(' separator=',' close=')'>#{item.license_id}</foreach>"+
            "</script>")
    List<Integer> getInfoIdByLicenseId(@Param("licenses") List<License> licenses);

    @Select("select code_id from t_code where info_id=#{info_id}")
    List<Integer> getByCodeId(int info_id);


    @Select("select license_id from t_code where user_id=#{user_id} and info_id=#{info_id};")
    List<Integer> getLicenseIdsByUserIdAndInfoId(@Param("user_id") int user_id, @Param("info_id") int info_id);

    @Insert("insert into t_code (license_id, code, user_id, info_id) values (#{license_id},#{code},#{user_id},#{info_id}) ")
    int save(Code code);


    @Update("update t_code set license_id=#{license_id},code=#{code},user_id=#{user_id},info_id=#{info_id} where code_id=#{code_id}")
    int update(Code code);


    @Select("select * from t_code where license_id=#{license_id}")
    List<Code> getAll(int license_id);
}
