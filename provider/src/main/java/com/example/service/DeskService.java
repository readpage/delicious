package com.example.service;

import com.example.entity.Desk;
import com.baomidou.mybatisplus.extension.service.IService;
import com.example.util.PageInfo;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author f1dao😂
 * @since 2021-09-27
 */
public interface DeskService extends IService<Desk> {
    boolean save(Integer number);

    PageInfo<Desk> page(Integer pageNum, Integer pageSize);
}
