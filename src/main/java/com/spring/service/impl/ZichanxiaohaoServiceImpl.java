package com.spring.service.impl;

import com.base.ServiceBase;
import com.spring.dao.ZichanxiaohaoMapper;
import com.spring.entity.Zichanxiaohao;
import com.spring.service.ZichanxiaohaoService;
import org.springframework.stereotype.Service;
import util.Info;

import javax.annotation.Resource;

@Service("ZichanxiaohaoService")
public class ZichanxiaohaoServiceImpl extends ServiceBase<Zichanxiaohao> implements ZichanxiaohaoService {
    @Resource
    private ZichanxiaohaoMapper dao;

    @Override
    protected ZichanxiaohaoMapper getDao() {
        return dao;
    }
}
