package com.dao.student;

import com.pojo.student;
import org.apache.ibatis.annotations.Param;
import org.springframework.lang.Nullable;

import java.util.List;
import java.util.Map;

public interface studentMapper {

    void insert(student student);
    void delete(Map map);

    List<student> selectStudent(@Nullable Map map);

}
