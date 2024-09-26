package studentTest;

import com.dao.student.studentMapper;
import com.pojo.student;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MyTest {


    @Test
    public void test(){
        ApplicationContext context = new ClassPathXmlApplicationContext("spring-dao.xml");
        studentMapper mapper = context.getBean("studentMapper", studentMapper.class);
        Map map = new HashMap();
        map.put("id",1);
        List<student> students = mapper.selectStudent(null);
        for (student student : students) {
            System.out.println(student);
        }
    }
    @Test
    public void Test_insert(){
        ApplicationContext context = new ClassPathXmlApplicationContext("spring-dao.xml");
        studentMapper mapper = context.getBean("studentMapper", studentMapper.class);
        mapper.insert(new student(20,"倩倩",1,null));
    }

}
