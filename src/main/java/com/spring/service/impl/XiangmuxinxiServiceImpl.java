package com.spring.service.impl;

import com.base.ServiceBase;
import com.spring.dao.XiangmuxinxiMapper;
import com.spring.entity.Xiangmuxinxi;
import com.spring.service.XiangmuxinxiService;
import org.springframework.stereotype.Service;
import util.Info;

import javax.annotation.Resource;

@Service("XiangmuxinxiService")
public class XiangmuxinxiServiceImpl extends ServiceBase<Xiangmuxinxi> implements XiangmuxinxiService {
    @Resource
    private XiangmuxinxiMapper dao;

    @Override
    protected XiangmuxinxiMapper getDao() {
        return dao;
    }
}
