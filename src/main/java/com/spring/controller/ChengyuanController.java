package com.spring.controller;

import com.spring.dao.ChengyuanMapper;
import com.spring.entity.Chengyuan;
import com.spring.service.ChengyuanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import tk.mybatis.mapper.entity.Example;
import util.Request;
import util.Info;
import dao.Query;

import java.util.*;


/**
 * 成员
 */
@Controller
public class ChengyuanController extends BaseController {
    @Autowired
    private ChengyuanMapper dao;
    @Autowired
    private ChengyuanService service;


    /**
     * 后台列表页
     */
    @RequestMapping("/chengyuan_list")
    public String list() {
        // 检测是否有登录，没登录则跳转到登录页面
        if (!checkLogin()) {
            return showError("尚未登录", "./login.do");
        }

        String order = Request.get("order", "id"); // 获取前台提交的URL参数 order  如果没有则设置为id
        String sort = Request.get("sort", "desc"); // 获取前台提交的URL参数 sort  如果没有则设置为desc

        Example example = new Example(Chengyuan.class); //  创建一个扩展搜索类
        Example.Criteria criteria = example.createCriteria();          // 创建一个扩展搜索条件类
        String where = " 1=1 ";   // 创建初始条件为：1=1
        where += getWhere();      // 从方法中获取url 上的参数，并写成 sql条件语句
        criteria.andCondition(where);   // 将条件写进上面的扩展条件类中
        if (sort.equals("desc")) {        // 判断前台提交的sort 参数是否等于  desc倒序  是则使用倒序，否则使用正序
            example.orderBy(order).desc();  // 把sql 语句设置成倒序
        } else {
            example.orderBy(order).asc();   // 把 sql 设置成正序
        }
        int page = request.getParameter("page") == null ? 1 : Integer.valueOf(request.getParameter("page"));  // 获取前台提交的URL参数 page  如果没有则设置为1
        page = Math.max(1, page);  // 取两个数的最大值，防止page 小于1
        List<Chengyuan> list = service.selectPageExample(example, page, 12);   // 获取当前页的行数
        // 将列表写给界面使用
        assign("list", list);
        assign("orderby", order);  // 把当前排序结果写进前台
        assign("sort", sort);      // 把当前排序结果写进前台
        assign("where", where);    // 把当前条件写给前台
        return "chengyuan_list";   // 使用视图文件：WebRoot\chengyuan_list.jsp
    }


    /**
     * 获取前台搜索框填写的内容,并组成where 语句
     */
    public String getWhere() {
        String where = " ";
        // 以下是判断搜索框中是否有输入内容，判断是否前台是否有填写相关条件，符合则写入sql搜索语句
        if (!Request.get("zhanghao").equals("")) {
            where += " AND zhanghao LIKE '%" + Request.get("zhanghao") + "%' ";
        }
        if (!Request.get("xingming").equals("")) {
            where += " AND xingming LIKE '%" + Request.get("xingming") + "%' ";
        }
        if (!Request.get("xiangmu").equals("")) {
            where += " AND xiangmu ='" + Request.get("xiangmu") + "' ";
        }
        return where;
    }


    @RequestMapping("/chengyuan_add")
    public String add() {
        return "chengyuan_add";
    }

    @RequestMapping("/chengyuan_add1")
    public String add1() {
        return "chengyuan_add1";
    }


    @RequestMapping("/chengyuan_updt")
    public String updt() {
        int id = Request.getInt("id");
        // 获取行数据，并赋值给前台jsp页面
        Chengyuan mmm = service.find(id);
        request.setAttribute("mmm", mmm);
        request.setAttribute("updtself", 0);
        return "chengyuan_updt";
    }

    @RequestMapping("/chengyuan_updtself")
    public String updtself() {
        // 更新个人资料
        int id = (int) request.getSession().getAttribute("id");
        Chengyuan mmm = service.find(id);
        request.setAttribute("mmm", mmm);
        request.setAttribute("updtself", 1);

        return "chengyuan_updtself";
    }

    /**
     * 添加内容
     *
     * @return
     */
    @RequestMapping("/chengyuaninsert")
    public String insert() {
        String tmp = "";
        Chengyuan post = new Chengyuan();  // 创建实体类
        // 设置前台提交上来的数据到实体类中
        post.setZhanghao(Request.get("zhanghao"));

        post.setMima(Request.get("mima"));

        post.setXingming(Request.get("xingming"));

        post.setXingbie(Request.get("xingbie"));

        post.setShengri(Request.get("shengri"));

        post.setNianling(Request.getInt("nianling"));

        post.setDianhua(Request.get("dianhua"));

        post.setXiangmu(Request.get("xiangmu"));

        post.setAddtime(Info.getDateStr());


        service.insert(post); // 插入数据
        int charuid = post.getId().intValue();

        return showSuccess("保存成功", Request.get("referer").equals("") ? request.getHeader("referer") : Request.get("referer"));
    }

    /**
     * 更新内容
     *
     * @return
     */
    @RequestMapping("/chengyuanupdate")
    public String update() {
        // 创建实体类
        Chengyuan post = new Chengyuan();
        // 将前台表单数据填充到实体类
        if (!Request.get("zhanghao").equals(""))
            post.setZhanghao(Request.get("zhanghao"));
        if (!Request.get("mima").equals(""))
            post.setMima(Request.get("mima"));
        if (!Request.get("xingming").equals(""))
            post.setXingming(Request.get("xingming"));
        if (!Request.get("xingbie").equals(""))
            post.setXingbie(Request.get("xingbie"));
        if (!Request.get("shengri").equals(""))
            post.setShengri(Request.get("shengri"));
        if (!Request.get("nianling").equals(""))
            post.setNianling(Request.getInt("nianling"));
        if (!Request.get("dianhua").equals(""))
            post.setDianhua(Request.get("dianhua"));
        if (!Request.get("xiangmu").equals(""))
            post.setXiangmu(Request.get("xiangmu"));
        if (!Request.get("addtime").equals(""))
            post.setAddtime(Request.get("addtime"));

        post.setId(Request.getInt("id"));
        service.update(post); // 更新数据
        int charuid = post.getId().intValue();
        if (Request.getInt("updtself") == 1) {
            return showSuccess("保存成功", "chengyuan_updtself.do");
        }
        return showSuccess("保存成功", Request.get("referer")); // 弹出保存成功，并跳转到前台提交的 referer 页面
    }

    /**
     * 后台详情
     */
    @RequestMapping("/chengyuan_detail")
    public String detail() {
        int id = Request.getInt("id");
        Chengyuan map = service.find(id);  // 根据前台url 参数中的id获取行数据
        request.setAttribute("map", map);  // 把数据写到前台
        return "chengyuan_detail";  // 详情页面：WebRoot\chengyuan_detail.jsp
    }

    /**
     * 删除
     */
    @RequestMapping("/chengyuan_delete")
    public String delete() {
        if (!checkLogin()) {
            return showError("尚未登录");
        }
        int id = Request.getInt("id");  // 根据id 删除某行数据
        HashMap map = Query.make("chengyuan").find(id);

        service.delete(id);// 根据id 删除某行数据
        return showSuccess("删除成功", request.getHeader("referer"));//弹出删除成功，并跳回上一页
    }
}
