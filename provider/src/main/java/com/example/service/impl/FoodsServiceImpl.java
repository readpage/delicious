package com.example.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.entity.Foods;
import com.example.mapper.FoodsMapper;
import com.example.service.FoodsService;
import com.example.util.PageInfo;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author f1dao😂
 * @since 2021-09-13
 */
@Service
public class FoodsServiceImpl extends ServiceImpl<FoodsMapper, Foods> implements FoodsService {

    @Autowired
    private FoodsMapper foodsMapper;

    @Override
    public PageInfo<Foods> selectPage(int pageNum, int pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        List<Foods> foods = foodsMapper.selectList(null);
        return new PageInfo<Foods>(foods);
    }
}
