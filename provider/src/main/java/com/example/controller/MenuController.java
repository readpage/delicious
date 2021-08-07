package com.example.controller;


import com.example.entity.Menu;
import com.example.service.MenuRoleService;
import com.example.service.MenuService;
import com.example.utils.PageInfo;
import com.example.utils.result.Result;
import com.example.utils.result.ResultEnum;
import com.example.utils.result.ResultUtils;
import com.github.xiaoymin.knife4j.annotations.ApiOperationSupport;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author f1dao😂
 * @since 2021-07-28
 */
@RestController
@Api(tags = "菜单管理")
@RequestMapping("/menu")
public class MenuController {
    @Autowired
    private MenuService menuService;

    @Autowired
    private MenuRoleService menuRoleService;

    @ApiOperation("添加菜单")
    @ApiOperationSupport(ignoreParameters = {"menu.id", "menu.createTime", "menu.updateTime", "menu.version", "menu.roles"})
    @PostMapping("/save")
    public Result<Object> save(@RequestBody Menu menu) {
        if (menuService.save(menu)) {
            return ResultUtils.ok(ResultEnum.CREATE_SUCCESS);
        }
        return ResultUtils.fail(ResultEnum.CREATE_FAIL);
    }

    @ApiOperation("分页查询菜单")
    @GetMapping("/page/{pageNum}/{pageSize}")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "pageNum", value = "页数", required = true),
            @ApiImplicitParam(name = "pageSize", value = "页大小", required = true)
    })
    public Result<PageInfo<Menu>> selectPage(@PathVariable int pageNum, @PathVariable int pageSize) {
        return ResultUtils.ok(ResultEnum.RETRIEVE_SUCCESS, menuService.selectPage(pageNum, pageSize));
    }

    @ApiOperation("查询当前用户菜单")
    @GetMapping("/like")
    public Result<List<Menu>> selectLike() {
        List<String> names = new ArrayList<>();
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        for (GrantedAuthority auth : authentication.getAuthorities()) {
            names.add(String.valueOf(auth));
        }
        names.add("tourist");
        return ResultUtils.ok(ResultEnum.RETRIEVE_SUCCESS, menuRoleService.selectByName(names));
    }

    @ApiOperation("修改菜单")
    @ApiOperationSupport(ignoreParameters = {"menu.createTime", "menu.updateTime", "menu.version", "menu.roles"})
    @PutMapping("/update")
    public Result<Object> updateById(@RequestBody Menu menu) {
        if (menuService.updateById(menu)) {
            return ResultUtils.ok(ResultEnum.UPDATE_SUCCESS);
        }
        return ResultUtils.fail(ResultEnum.UPDATE_FAIL);
    }

    @ApiOperation("删除菜单")
    @DeleteMapping("/remove/{id}")
    @ApiImplicitParam(name = "id", value = "菜单ID", dataType = "Integer", required = true)
    public Result<Object> removeById(@PathVariable Integer id) throws Exception {
        if (menuService.removeById(id)) {
            return ResultUtils.ok(ResultEnum.DELETE_SUCCESS);
        }
        return ResultUtils.fail(ResultEnum.DELETE_FAIL);
    }
}

