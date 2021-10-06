package com.spring.service;

import com.base.IServiceBase;
import com.spring.entity.Chengyuan;

public interface ChengyuanService extends IServiceBase<Chengyuan> {
    public Chengyuan login(String username, String password);
    public boolean updatePassword(int id, String newPassword);
}
