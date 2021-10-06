package com.spring.dao;

import com.base.MapperBase;
import com.spring.entity.Chengyuan;

import org.springframework.stereotype.Repository;


@Repository
public interface ChengyuanMapper extends MapperBase<Chengyuan> {
    Chengyuan login(Chengyuan chengyuan);
}
