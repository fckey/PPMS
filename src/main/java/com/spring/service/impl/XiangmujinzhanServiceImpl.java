package com.spring.service.impl;

import com.base.ServiceBase;
import com.spring.dao.XiangmujinzhanMapper;
import com.spring.entity.Xiangmujinzhan;
import com.spring.service.XiangmujinzhanService;
import org.springframework.stereotype.Service;
import util.Info;

import javax.annotation.Resource;

@Service("XiangmujinzhanService")
public class XiangmujinzhanServiceImpl extends ServiceBase<Xiangmujinzhan> implements XiangmujinzhanService {
    @Resource
    private XiangmujinzhanMapper dao;

    @Override
    protected XiangmujinzhanMapper getDao() {
        return dao;
    }
}
