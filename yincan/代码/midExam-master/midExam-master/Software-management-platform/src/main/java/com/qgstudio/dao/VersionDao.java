package com.qgstudio.dao;

import com.qgstudio.po.Software;
import com.qgstudio.po.Version;
import org.apache.ibatis.annotations.*;

import java.util.List;
/**
 * @program: Software-management-platform
 * @description: 版本模块持久层
 * @author: OuroborosNo2
 * @create: 2022-07-24 20:26
 **/
public interface VersionDao {
    /**
     * 插入版本数据,@Options注释使数据插入成功后将自增的id主键赋值给该软件对象
     * @param version 版本对象
     * @return 返回影响的行数
     */
    @Insert("INSERT INTO t_version(software_id,versionInf,`desc`,url,release_date) VALUES(#{software_id},#{versionInf},#{desc},#{url},#{release_date})")
    @Options(useGeneratedKeys = true,keyProperty = "version_id",keyColumn = "version_id")
    public int save(Version version);

    /**
     * 修改版本数据
     * @param version 版本对象
     * @return 返回影响的行数
     */
    @Update("UPDATE t_version SET versionInf=#{versionInf},`desc`=#{desc},url=#{url} WHERE version_id=#{version_id}")
    public int update(Version version);

    /**
     * 通过id删除版本
     * @param version_id 版本id
     * @return  返回影响的行数
     */
    @Delete("DELETE FROM t_version WHERE version_id = #{version_id}")
    public int delete(int version_id);

    /**
     * 通过id查询版本
     * @param version_id 版本id
     * @return 返回查询到的版本
     */
    @Select("SELECT * FROM t_version WHERE version_id = #{version_id}")
    public Version getById(int version_id);

    /**
     * 根据版本号和软件id查询版本
     * @param software_id 软件id
     * @param versionInf 版本号
     * @return 返回查询到的版本
     */
    @Select("SELECT * FROM t_version WHERE software_id = #{software_id} AND versionInf = #{versionInf}")
    public Version getByVersionInf(@Param("software_id") int software_id,@Param("versionInf") String versionInf);

    /**
     * 根据软件id获得某个软件的最新版本
     * @param software_id 软件id
     * @return 返回查询到的版本
     */
    @Select("select * from t_version as a where not exists (select 1 from t_version as b where b.software_id=a.software_id and b.version_id>a.version_id) AND a.software_id=#{software_id}")
    public Version getLatest(int software_id);

    /**
     * 获得某个软件的所有版本
     * @param software_id 版本id
     * @return 查询到的版本集
     */
    @Select("SELECT * FROM t_version WHERE software_id=#{software_id}")
    public List<Version> getAllBySoftware_id(int software_id);

    /**
     * 查询所有版本
     * @return 查询到的版本及
     */
    @Select("SELECT * FROM t_version")
    public List<Version> getAll();

}
