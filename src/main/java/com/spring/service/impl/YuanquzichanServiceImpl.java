package com.spring.service.impl;

import com.base.ServiceBase;
import com.spring.dao.YuanquzichanMapper;
import com.spring.entity.Yuanquzichan;
import com.spring.service.YuanquzichanService;
import org.springframework.stereotype.Service;
import util.Info;

import javax.annotation.Resource;

@Service("YuanquzichanService")
public class YuanquzichanServiceImpl extends ServiceBase<Yuanquzichan> implements YuanquzichanService {
    @Resource
    private YuanquzichanMapper dao;

    @Override
    protected YuanquzichanMapper getDao() {
        return dao;
    }
}
