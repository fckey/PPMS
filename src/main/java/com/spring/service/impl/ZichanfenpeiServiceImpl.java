package com.spring.service.impl;

import com.base.ServiceBase;
import com.spring.dao.ZichanfenpeiMapper;
import com.spring.entity.Zichanfenpei;
import com.spring.service.ZichanfenpeiService;
import org.springframework.stereotype.Service;
import util.Info;

import javax.annotation.Resource;

@Service("ZichanfenpeiService")
public class ZichanfenpeiServiceImpl extends ServiceBase<Zichanfenpei> implements ZichanfenpeiService {
    @Resource
    private ZichanfenpeiMapper dao;

    @Override
    protected ZichanfenpeiMapper getDao() {
        return dao;
    }
}
