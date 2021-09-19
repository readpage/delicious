package com.example.controller;


import com.example.entity.Statis;
import com.example.service.StatisService;
import com.example.util.result.Result;
import com.example.util.result.ResultUtils;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author f1dao😂
 * @since 2021-09-15
 */
@RestController
@Api(tags = "数据统计")
@RequestMapping("/statis")
public class StatisController {
    @Autowired
    private StatisService statisService;

    @ApiOperation("最近7天数据")
    @GetMapping("/recent")
    public Result<List<Statis>> recent() {
        return ResultUtils.query(statisService.recent());
    }

}
