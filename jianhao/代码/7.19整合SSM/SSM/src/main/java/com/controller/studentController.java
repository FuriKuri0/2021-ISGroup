package com.controller;


import com.dao.student.studentMapper;
import com.dao.student.studentMapperImpl;
import com.pojo.student;
import com.service.studentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class studentController {

    @Autowired
    @Qualifier("studentServiceImpl")    //创建对象
    private studentService studentService;

    @RequestMapping("/selectStudent")
    public String  selectStudent(Model model){

        List<student> students = studentService.selectStudent(null);
        for (student student : students) {
            System.out.println(student);
        }
        model.addAttribute("list",students);
        return "student";
    }


    @RequestMapping("insert")
    public String insert(Model model){
        studentService.insert(new student(6,"倩倩",1,null));
        model.addAttribute("msg","success");
        return "student";
    }

    @RequestMapping("delete")
    public String delete(Model model){
        Map map = new HashMap<String,Object>();
        map.put("id",7);
        studentService.delete(map);
        model.addAttribute("msg","success");
        return "student";
    }
}
