package com.example.service.impl;

import cn.hutool.extra.qrcode.QrCodeUtil;
import cn.hutool.extra.qrcode.QrConfig;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.entity.Desk;
import com.example.mapper.DeskMapper;
import com.example.service.DeskService;
import com.example.util.PageInfo;
import com.github.pagehelper.PageHelper;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import java.io.File;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author f1dao😂
 * @since 2021-09-27
 */
@Service
public class DeskServiceImpl extends ServiceImpl<DeskMapper, Desk> implements DeskService {

    @Autowired
    private DeskMapper deskMapper;

    private String qr(Integer number) {
        String origin = new File("").getAbsoluteFile().getPath()+ "/static";
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String path = "/upload/" +authentication.getName()+ "/" +number +".png";
        File upload = new File(origin, path);
        QrConfig qrConfig = QrConfig.create().setImg(new File(origin, "/img/qr.png")); //附带logo
        // 高纠错级别
        qrConfig.setErrorCorrection(ErrorCorrectionLevel.H);
        QrCodeUtil.generate("http://food.f1dao.cn/desk/" +number, qrConfig , upload);
        return path;
    }

    @Override
    public boolean save(Integer number) {
        Desk desk = new Desk();
        desk.setNumber(number);
        desk.setImg("/api" +qr(number));
        return deskMapper.insert(desk) > 0;
    }

    @Override
    public boolean updateById(Desk desk) {
        desk.setImg("/api" +qr(desk.getNumber()));
        return deskMapper.updateById(desk) > 0;
    }

    @Override
    public PageInfo<Desk> page(Integer pageNum, Integer pageSize, Integer number) {
        PageHelper.startPage(pageNum, pageSize);
        return new PageInfo(deskMapper.like(number));
    }
}
