package com.example;

import com.example.mapper.UserMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class DemoTest {

    @Autowired
    private UserMapper userMapper;

    @Test
    public void test() {
        userMapper.selectCount(null);
    }
}
