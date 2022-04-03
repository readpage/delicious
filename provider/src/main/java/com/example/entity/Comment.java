package com.example.entity;

import com.baomidou.mybatisplus.annotation.*;
import com.example.utils.PageInfo;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import java.io.Serializable;
import java.util.Date;

/**
 * <p>
 * 
 * </p>
 *
 * @author f1dao😂
 * @since 2021-10-22
 */
@ApiModel(value="Comment对象", description="")
public class Comment implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "评论id")
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "用户id")
    private Integer uid;

    @ApiModelProperty(value = "餐品id")
    private Integer fId;

    @ApiModelProperty(value = "父节点")
    private Integer parentId;

    @ApiModelProperty(value = "用户名")
    private String username;

    @ApiModelProperty(value = "头像")
    private String avatar;

    @ApiModelProperty(value = "评论内容")
    private String content;

    @ApiModelProperty(value = "状态 ")
    private boolean state;

    @ApiModelProperty(value = "创建时间")
    @TableField(fill = FieldFill.INSERT)
    private Date createTime;

    @ApiModelProperty(value = "修改时间")
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private Date updateTime;

    @ApiModelProperty(value = "版本")
    @Version
    private Integer version;

    @TableField(exist = false)
    private PageInfo<Comment> reply;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public Integer getfId() {
        return fId;
    }

    public void setfId(Integer fId) {
        this.fId = fId;
    }

    public Integer getParentId() {
        return parentId;
    }

    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public boolean getState() {
        return state;
    }

    public void setState(boolean state) {
        this.state = state;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public Integer getVersion() {
        return version;
    }

    public void setVersion(Integer version) {
        this.version = version;
    }

    public PageInfo<Comment> getReply() {
        return reply;
    }

    public void setReply(PageInfo<Comment> reply) {
        this.reply = reply;
    }

    @Override
    public String toString() {
        return "Comment{" +
                "id=" + id +
                ", uid=" + uid +
                ", fId=" + fId +
                ", parentId=" + parentId +
                ", username='" + username + '\'' +
                ", avatar='" + avatar + '\'' +
                ", content='" + content + '\'' +
                ", state=" + state +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                ", version=" + version +
                ", reply=" + reply +
                '}';
    }
}
