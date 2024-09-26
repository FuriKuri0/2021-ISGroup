package com.dao.student;

import com.pojo.student;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.lang.Nullable;

import java.util.List;
import java.util.Map;

public class studentMapperImpl implements studentMapper{

    private SqlSessionTemplate sqlSessionTemplate;



    public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate){
        this.sqlSessionTemplate = sqlSessionTemplate;
    }


    @Override
    public void insert(student student) {
        studentMapper mapper = sqlSessionTemplate.getMapper(studentMapper.class);
        mapper.insert(student);
    }

    @Override
    public void delete(Map map) {
        studentMapper mapper = sqlSessionTemplate.getMapper(studentMapper.class);
        mapper.delete(map);
    }

    @Override
    public List<student> selectStudent(@Nullable Map map) {
        studentMapper mapper = sqlSessionTemplate.getMapper(studentMapper.class);
        return mapper.selectStudent(map);
    }
}
