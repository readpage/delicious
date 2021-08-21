package com.example.controller;


import com.example.service.LogInfoService;
import com.example.utils.result.Result;
import com.example.utils.result.ResultUtils;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author f1dao😂
 * @since 2021-08-21
 */
@RestController
@RequestMapping("/log-info")
@Api(tags = "日志管理")
public class LogInfoController {

    @Autowired
    private LogInfoService logInfoService;

    @ApiOperation("分页查询日志")
    @GetMapping("/page/{pageNum}/{pageSize}")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "pageNum", value = "页数", required = true, dataType = "int", example = "1"),
            @ApiImplicitParam(name = "pageSize", value = "页大小", required = true, dataType = "int", example = "5")
    })
    public Result<Object> page(@PathVariable int pageNum, @PathVariable int pageSize) {
        return ResultUtils.query(logInfoService.selectPage(pageNum, pageSize));
    }
}

