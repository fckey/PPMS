package com.spring.service.impl;

import com.base.ServiceBase;
import com.spring.dao.ZhidaoxiangmuMapper;
import com.spring.entity.Zhidaoxiangmu;
import com.spring.service.ZhidaoxiangmuService;
import org.springframework.stereotype.Service;
import util.Info;

import javax.annotation.Resource;

@Service("ZhidaoxiangmuService")
public class ZhidaoxiangmuServiceImpl extends ServiceBase<Zhidaoxiangmu> implements ZhidaoxiangmuService {
    @Resource
    private ZhidaoxiangmuMapper dao;

    @Override
    protected ZhidaoxiangmuMapper getDao() {
        return dao;
    }
}
