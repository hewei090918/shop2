package com.web.shop.test;  
  
import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.alibaba.fastjson.JSON;
import com.web.shop.domain.User;
import com.web.shop.service.UserService;
  
@RunWith(SpringJUnit4ClassRunner.class)     //表示继承了SpringJUnit4ClassRunner类  
@ContextConfiguration(locations = {"classpath:spring/spring-application.xml"})  
  
public class TestMyBatis {  
    private static Logger logger = Logger.getLogger(TestMyBatis.class); 
    
//    private ApplicationContext ac = null;  
    @Resource  
    private UserService userService = null;  
  
//    @Before  
//    public void before() {  
//    	ac = new ClassPathXmlApplicationContext("applicationContext.xml");  
//    	userService = (UserService) ac.getBean("userService");  
//    }  
  
    @Test  
    public void test1() {  
        User user = userService.findById(1);  
        // System.out.println(user.getUserName());  
        // logger.info("值："+user.getUserName());  
        logger.info(JSON.toJSONString(user));  
    }  
} 