package com.example.controller;


import com.example.entity.Orders;
import com.example.input.OrdersForm;
import com.example.service.OrdersService;
import com.example.utils.PageInfo;
import com.example.utils.result.Result;
import com.example.utils.result.ResultUtils;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
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
    public Result<Object> save(@PathVariable Integer uid, @RequestBody OrdersForm ordersForm) {
        try {
            ordersService.save(uid, ordersForm.getdNumber(), ordersForm.getOrdersFoods());
        } catch (Exception e) {
            e.printStackTrace();
            return ResultUtils.save(false);
        }
        return ResultUtils.save(true);
    }

    @ApiOperation("查询订单")
    @GetMapping("/page/{pageNum}/{pageSize}")
    public Result<PageInfo<Orders>> page(@PathVariable int pageNum, @PathVariable int pageSize, Integer uid, String number) {
        return ResultUtils.query(ordersService.page(pageNum, pageSize, uid, number));
    }

    @ApiOperation("查询个人订单")
    @GetMapping("/self")
    public Result<List<Orders>> selectSelf() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        return ResultUtils.query(ordersService.selectSelf(auth.getName()));
    }

    @ApiOperation("删除订单")
    @DeleteMapping("/remove")
    public Result<Object> removeByIds(@RequestBody List<Integer> list) {
        try {
            ordersService.removeByIds(list);
        } catch (Exception e) {
            e.printStackTrace();
            return ResultUtils.remove(false);
        }
        return ResultUtils.remove(true);
    }
}

