package com.spring.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import util.*;
import java.util.*;
import dao.CommDAO;
import net.jntoo.db.Query;
import com.alibaba.fastjson.*;

/**
 * 首页控制器
 */
@Controller
public class IndexController extends BaseController{

    // 首页
    @RequestMapping(value = {"/" , "index"})
    public String Index()
    {
                        return "index";
        
    }



}
