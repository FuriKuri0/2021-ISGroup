package com.qgstudio.dao;

import com.qgstudio.po.License;
import org.apache.ibatis.annotations.*;

import java.util.Date;
import java.util.List;

/**
 * @program: Software-management-platform
 * @description:
 * @author: stop.yc
 * @create: 2022-07-27 11:45
 **/
public interface LicenseDao {

    @Insert("insert into t_license (user_id, software_id, function_type, version_id,begin_date, end_date, validity_time, license_num)" +
            " values (#{user_id},#{software_id},#{function_type},#{version_id},#{begin_date},#{end_date},#{validity_time},#{license_num})")
    @Options(useGeneratedKeys = true,keyProperty = "license_id")
    int save(License license);


    @Select("select * from t_license where  user_id = #{user_id} and software_id = #{software_id} ")
    List<License> getAllBySoftwareIdAndUserId (@Param("user_id") int user_id,@Param("software_id") int software_id);


    @Update("update t_license set function_type=#{function_type},version_id=#{version_id},begin_date=#{begin_date},end_date=#{end_date},validity_time=#{validity_time},license_num=#{license_num} where user_id = #{user_id} and software_id = #{software_id}  ")
    int upgrade(License license);


    @Select("select license_num from t_license where user_id = #{user_id} and software_id = #{software_id} ")
    int getCount(License license);


    @Select("select * from t_license where user_id = #{user_id}")
    List<License>getAllByUserId(int user_id);


    @Select("select * from t_license where software_id=#{software_id} and version_id=#{version_id}")
    List<License> getBySoftIdAndFunctionTypeAndVersionId(@Param("software_id") int software_id, @Param("version_id") int version_id);

    @Select("select end_date from  t_license where license_id=#{license_id}")
    Date getEndTimeByLicenseId(int license_id);



    @Select("<script> " +
            "select * from t_license where license_id in " +
            "<foreach collection='licenses' item='item' open='(' separator=',' close=')'>#{item}</foreach> and user_id=#{user_id} and software_id=#{software_id}  and version_id=#{version_id}"+
            "</script>")
    License getEndTimeByLicenseIdsAndUidAndSidAndFidAndVid(@Param("licenses") List<Integer> licenseIds,@Param("user_id") int user_id,@Param("software_id") int software_id,@Param("version_id") int version_id);


    @Select("select * from t_license where license_id=#{license_id}")
    License getByLicenseid(int license_id);

}
