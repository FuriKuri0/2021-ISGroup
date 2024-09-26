package com.service;

import com.pojo.student;
import org.springframework.lang.Nullable;

import java.util.List;
import java.util.Map;

public interface studentService {
    void insert(student student);
    void delete(Map map);
    List<student> selectStudent(@Nullable Map map);
}
