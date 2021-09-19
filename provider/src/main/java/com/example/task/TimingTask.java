package com.example.task;

import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.example.entity.Statis;
import com.example.mapper.FoodsMapper;
import com.example.mapper.LogInfoMapper;
import com.example.mapper.UserMapper;
import com.example.service.StatisService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Component
public class TimingTask {

    @Autowired
    private LogInfoMapper logInfoMapper;

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private FoodsMapper foodsMapper;

    @Autowired
    private StatisService statisService;

    public Statis getStatis() {
        Statis statis = new Statis();
        statis.setUv(logInfoMapper.selectUv());
        statis.setUserCount(userMapper.selectCount(null));
        statis.setFoodsCount(foodsMapper.selectCount(null));
        return statis;
    }

//    @Scheduled(cron = "0 0 0 * * ?")
    public void day(Statis statis) {
        statisService.save(statis);
    }

    @Scheduled(cron = "0 0 0/1 * * ?")
    public void hour() {
        UpdateWrapper<Statis> wrapper = new UpdateWrapper<>();
        wrapper.last("WHERE TO_DAYS(create_time) = TO_DAYS(NOW())");
        Statis statis = getStatis();
        if (!statisService.update(getStatis(), wrapper)) {
            day(statis);
        }
    }
}
