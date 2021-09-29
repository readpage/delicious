package com.example.controller;


import com.example.entity.Orders;
import com.example.entity.OrdersFoods;
import com.example.service.OrdersService;
import com.example.util.PageInfo;
import com.example.util.result.Result;
import com.example.util.result.ResultUtils;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author f1dao😂
 * @since 2021-09-27
 */
@RestController
@Api(tags = "订单管理")
@RequestMapping("/orders")
public class OrdersController {
    @Autowired
    private OrdersService ordersService;

    @ApiOperation("添加订单")
    @PostMapping("/save/{uid}")
    public Result<Object> save(@PathVariable Integer uid, @RequestBody List<OrdersFoods> ordersFoods) {
        try {
            ordersService.save(uid, ordersFoods);
        } catch (Exception e) {
            e.printStackTrace();
            return ResultUtils.save(false);
        }
        return ResultUtils.save(true);
    }

    @ApiOperation("查询订单")
    @GetMapping("/page/{pageNum}/{pageSize}")
    public Result<PageInfo<Orders>> page(@PathVariable int pageNum, @PathVariable int pageSize) {
        return ResultUtils.query(ordersService.selectPage(pageNum, pageSize));
    }
}

