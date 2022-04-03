package com.example.controller;


import com.example.entity.Desk;
import com.example.service.DeskService;
import com.example.utils.PageInfo;
import com.example.utils.result.Result;
import com.example.utils.result.ResultUtils;
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
@Api(tags = "桌号管理")
@RequestMapping("/desk")
public class DeskController {
    @Autowired
    private DeskService deskService;

    @ApiOperation("添加桌号")
    @PostMapping("/save/{number}")
    public Result<Object> save(@PathVariable Integer number) {
        return ResultUtils.save(deskService.save(number));
    }

    @ApiOperation("查询桌号")
    @GetMapping("/page/{pageNum}/{pageSize}")
    public Result<PageInfo<Desk>> page(@PathVariable Integer pageNum, @PathVariable Integer pageSize, Integer number) {
        return ResultUtils.query(deskService.page(pageNum, pageSize, number));
    }

    @ApiOperation("修改桌号")
    @PutMapping("/update")
    public Result<Object> update(@RequestBody Desk desk) {
        return ResultUtils.update(deskService.updateById(desk));
    }

    @ApiOperation("删除桌号")
    @DeleteMapping("/remove")
    public Result<Object> removeByIds(@RequestBody List<Integer> list) {
        return ResultUtils.remove(deskService.removeByIds(list));
    }
}

