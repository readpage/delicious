package com.example;

import cn.hutool.core.lang.ObjectId;
import cn.hutool.core.util.IdUtil;
import cn.hutool.core.util.RandomUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.entity.Foods;
import com.example.mapper.FoodsMapper;
import com.example.mapper.StatisMapper;
import com.example.mapper.UserMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class DemoTest {

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private StatisMapper statisMapper;

    @Autowired
    private FoodsMapper foodsMapper;

    @Test
    public void test() {
//        Statis statis = new Statis();
//        System.out.println("---------");
//        Integer uv = statisMapper.selectOne(
//                new QueryWrapper<Statis>()
//                        .select("SUM(uv) as uv")
//        ).getUv();
//        Integer id = userMapper.selectOne(
//                new QueryWrapper<User>()
//                        .select("id")
//                        .eq("username", "root")
//        ).getId();
//        System.out.println(id);
        List<Foods> foods = foodsMapper.selectList(
                new QueryWrapper<Foods>()
                        .last("ORDER BY sales DESC LIMIT 10")
        );
        System.out.println(foods);
    }

    public static void main(String[] args) {
        System.out.println(ObjectId.next());
        System.out.println(IdUtil.objectId());
        System.out.println(RandomUtil.randomString(10));
    }
}
