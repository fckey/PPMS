package com.spring.service.impl;

import com.base.ServiceBase;
import com.spring.dao.ChengyuanMapper;
import com.spring.entity.Chengyuan;
import com.spring.service.ChengyuanService;
import org.springframework.stereotype.Service;
import util.Info;

import javax.annotation.Resource;

@Service("ChengyuanService")
public class ChengyuanServiceImpl extends ServiceBase<Chengyuan> implements ChengyuanService {
    @Resource
    private ChengyuanMapper dao;

    @Override
    protected ChengyuanMapper getDao() {
        return dao;
    }
    public Chengyuan login(String username, String password) {
        Chengyuan user = new Chengyuan();
        user.setZhanghao(username);
            user.setMima(password);

        return this.dao.login(user);
    }

    public boolean updatePassword(int id, String newPassword) {
        Chengyuan user = new Chengyuan();
        user.setId(id);
            user.setMima(newPassword);
        int i = this.dao.updateByPrimaryKeySelective(user);
        return i == 1;
    }
}
