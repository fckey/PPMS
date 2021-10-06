package com.spring.service.impl;

import com.base.ServiceBase;
import com.spring.dao.ZhuanjiaMapper;
import com.spring.entity.Zhuanjia;
import com.spring.service.ZhuanjiaService;
import org.springframework.stereotype.Service;
import util.Info;

import javax.annotation.Resource;

@Service("ZhuanjiaService")
public class ZhuanjiaServiceImpl extends ServiceBase<Zhuanjia> implements ZhuanjiaService {
    @Resource
    private ZhuanjiaMapper dao;

    @Override
    protected ZhuanjiaMapper getDao() {
        return dao;
    }
}
