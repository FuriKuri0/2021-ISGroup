package com.service;

import com.dao.student.studentMapper;
import com.pojo.student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;


@Service
public class studentServiceImpl implements studentService{

    @Autowired
    private studentMapper studentMapper;


    @Override
    public void insert(student student) {
        studentMapper.insert(student);
    }

    @Override
    public void delete(Map map) {
        studentMapper.delete(map);
    }

    @Override
    public List<student> selectStudent(Map map) {
        return   studentMapper.selectStudent(map);

    }
}
