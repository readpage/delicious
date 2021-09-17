package com.example.controller;


import com.example.entity.Foods;
import com.example.service.FoodsService;
import com.example.util.PageInfo;
import com.example.util.result.Result;
import com.example.util.result.ResultUtils;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
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
 * @since 2021-09-13
 */
@RestController
@Api(tags = "餐品管理")
@RequestMapping("/foods")
public class FoodsController {
    @Autowired
    private FoodsService foodsService;

    @ApiOperation("分页查询餐品")
    @GetMapping("/page/{pageNum}/{pageSize}")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "pageNum", value = "页数", required = true, dataType = "int", example = "1"),
            @ApiImplicitParam(name = "pageSize", value = "页大小", required = true, dataType = "int", example = "5")
    })
    public Result<PageInfo<Foods>> selectPage(@PathVariable int pageNum, @PathVariable int pageSize) {
        return ResultUtils.query(foodsService.selectPage(pageNum, pageSize));
    }

    @ApiOperation("添加餐品")
    @PostMapping("/save")
    public Result<Object> save(@RequestBody Foods foods) {
        return ResultUtils.save(foodsService.save(foods));
    }

    @ApiOperation("修改餐品")
    @PutMapping("/update")
    public Result<Object> update(@RequestBody Foods foods) {
        return ResultUtils.update(foodsService.updateById(foods));
    }

    @ApiOperation("删除餐品")
    @DeleteMapping("/remove/{list}")
    @ApiImplicitParam(name = "list", value = "餐品id", dataType = "list<Integer>", example = "1, 2, 3")
    public Result<Object> removeByIds(@PathVariable List<Integer> list) {
        return ResultUtils.remove(foodsService.removeByIds(list));
    }
}

