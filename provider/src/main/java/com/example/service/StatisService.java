package com.example.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.entity.Statis;
import com.example.output.FoodInfo;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author f1dao😂
 * @since 2021-09-15
 */
public interface StatisService extends IService<Statis> {
    List<Statis> recent();

    Statis total();

    List<FoodInfo> selectByType();
}
