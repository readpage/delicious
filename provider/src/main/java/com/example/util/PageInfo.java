package com.example.util;


import com.github.pagehelper.PageSerializable;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import java.util.List;

@ApiModel(value = "PageInfo对象")
public class PageInfo<T> extends PageSerializable<T> {
    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "总数")
    private long total;

    @ApiModelProperty(value = "数据")
    private List<T> list;

    public PageInfo(List<T> list) {
        super(list);
    }

    @Override
    public String toString() {
        return "PageInfo{" +
                "total=" + total +
                ", list=" + list +
                '}';
    }
}
