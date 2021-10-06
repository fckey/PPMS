package com.spring.controller;

import com.spring.dao.XiangmujinzhanMapper;
import com.spring.entity.Xiangmujinzhan;
import com.spring.service.XiangmujinzhanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import tk.mybatis.mapper.entity.Example;
import util.Request;
import util.Info;
import dao.Query;
import java.util.*;



import com.spring.entity.Xiangmuxinxi;
import com.spring.service.XiangmuxinxiService;

/**
 * 项目进展 */
@Controller
public class XiangmujinzhanController extends BaseController
{
    @Autowired
    private XiangmujinzhanMapper dao;
    @Autowired
    private XiangmujinzhanService service;

    @Autowired
    private XiangmuxinxiService serviceRead;

    /**
     *  后台列表页
     *
     */
    @RequestMapping("/xiangmujinzhan_list")
    public String list()
    {
        // 检测是否有登录，没登录则跳转到登录页面
        if(!checkLogin()){
            return showError("尚未登录" , "./login.do");
        }

        String order = Request.get("order" , "id"); // 获取前台提交的URL参数 order  如果没有则设置为id
        String sort  = Request.get("sort" , "desc"); // 获取前台提交的URL参数 sort  如果没有则设置为desc

        Example example = new Example(Xiangmujinzhan.class); //  创建一个扩展搜索类
        Example.Criteria criteria = example.createCriteria();          // 创建一个扩展搜索条件类
        String where = " 1=1 ";   // 创建初始条件为：1=1
        where += getWhere();      // 从方法中获取url 上的参数，并写成 sql条件语句
        criteria.andCondition(where);   // 将条件写进上面的扩展条件类中
        if(sort.equals("desc")){        // 判断前台提交的sort 参数是否等于  desc倒序  是则使用倒序，否则使用正序
            example.orderBy(order).desc();  // 把sql 语句设置成倒序
        }else{
            example.orderBy(order).asc();   // 把 sql 设置成正序
        }
        int page = request.getParameter("page") == null ? 1 : Integer.valueOf(request.getParameter("page"));  // 获取前台提交的URL参数 page  如果没有则设置为1
        page = Math.max(1 , page);  // 取两个数的最大值，防止page 小于1
        List<Xiangmujinzhan> list = service.selectPageExample(example , page , 12);   // 获取当前页的行数
        // 将列表写给界面使用
        assign("list" , list);
        assign("orderby" , order);  // 把当前排序结果写进前台
        assign("sort" , sort);      // 把当前排序结果写进前台
        assign("where" , where);    // 把当前条件写给前台
        return "xiangmujinzhan_list";   // 使用视图文件：WebRoot\xiangmujinzhan_list.jsp
    }



    /**
     *  获取前台搜索框填写的内容,并组成where 语句
     */
    public String getWhere()
    {
        String where = " ";
        // 判断URL 参数xiangmuxinxiid是否大于0
        if( Request.getInt("xiangmuxinxiid") > 0 ) {
            // 大于0 则写入条件
            where += " AND xiangmuxinxiid='"+Request.getInt("xiangmuxinxiid")+"' ";
        }
        // 以下是判断搜索框中是否有输入内容，判断是否前台是否有填写相关条件，符合则写入sql搜索语句
            if(!Request.get("xiangmubianhao").equals("")) {
            where += " AND xiangmubianhao LIKE '%"+Request.get("xiangmubianhao")+"%' ";
        }
                if(!Request.get("xiangmumingcheng").equals("")) {
            where += " AND xiangmumingcheng LIKE '%"+Request.get("xiangmumingcheng")+"%' ";
        }
                if(!Request.get("shifouyiwancheng").equals("")) {
            where += " AND shifouyiwancheng ='"+Request.get("shifouyiwancheng")+"' ";
        }
            return where;
    }

    /**
     * 操作人列表
     */
    @RequestMapping("/xiangmujinzhan_list_caozuoren")
    public String listcaozuoren()
    {
        // 检测是否有登录，没登录则跳转到登录页面
        if(!checkLogin()){
            return showError("尚未登录" , "./login.do");
        }

        String order = Request.get("order" , "id"); // 获取前台提交的URL参数 order  如果没有则设置为id
        String sort  = Request.get("sort" , "desc"); // 获取前台提交的URL参数 sort  如果没有则设置为desc

        
        Example example = new Example(Xiangmujinzhan.class);  //  创建一个扩展搜索类
        Example.Criteria criteria = example.createCriteria();           // 创建一个扩展搜索条件类
        // 初始化一个条件，条件为：操作人=当前登录用户
        String where = " caozuoren='"+session.getAttribute("username")+"' ";
        where += getWhere();

        criteria.andCondition(where);   // 将条件写入
        if(sort.equals("desc")){        // 注释同list
            example.orderBy(order).desc(); // 注释同list
        }else{
            example.orderBy(order).asc(); // 注释同list
        }

        int page = request.getParameter("page") == null ? 1 : Integer.valueOf(request.getParameter("page")); // 注释同list
        page = Math.max(1 , page); // 注释同list

            List<Xiangmujinzhan> list = service.selectPageExample(example , page , 12);
        
        request.setAttribute("list" , list);
                assign("orderby" , order);
        assign("sort" , sort);
        assign("where" , where);
        return "xiangmujinzhan_list_caozuoren";
    }




        @RequestMapping("/xiangmujinzhan_add")
    public String add()
    {
        int id = Request.getInt("id");  // 根据id 获取 项目信息模块中的数据
        Xiangmuxinxi readMap = serviceRead.find(id);
        // 将数据行写入给前台jsp页面
        request.setAttribute("readMap" , readMap);
        return "xiangmujinzhan_add";
    }



    @RequestMapping("/xiangmujinzhan_updt")
    public String updt()
    {
        int id = Request.getInt("id");
        // 获取行数据，并赋值给前台jsp页面
        Xiangmujinzhan mmm = service.find(id);
        request.setAttribute("mmm" , mmm);
        request.setAttribute("updtself" , 0);
        return "xiangmujinzhan_updt";
    }
    /**
     * 添加内容
     * @return
     */
    @RequestMapping("/xiangmujinzhaninsert")
    public String insert()
    {
        String tmp="";
        Xiangmujinzhan post = new Xiangmujinzhan();  // 创建实体类
        // 设置前台提交上来的数据到实体类中
        post.setXiangmuxinxiid(Request.getInt("xiangmuxinxiid"));

        post.setXiangmubianhao(Request.get("xiangmubianhao"));

        post.setXiangmumingcheng(Request.get("xiangmumingcheng"));

        post.setXiangmuleixing(Request.get("xiangmuleixing"));

        post.setRiqi(Request.get("riqi"));

        post.setShifouyiwancheng(Request.get("shifouyiwancheng"));

        post.setJinzhanneirong(util.DownloadRemoteImage.run(Request.get("jinzhanneirong")));

        post.setCaozuoren(Request.get("caozuoren"));

        post.setXiangmuxinxiid(Request.getInt("xiangmuxinxiid"));

        
                service.insert(post); // 插入数据
        int charuid = post.getId().intValue();
        Query.execute("update xiangmuxinxi set xiangmujinzhan='已完成' where id='"+request.getParameter("xiangmuxinxiid")+"' AND '"+request.getParameter("shifouyiwancheng")+"'='是'");



        return showSuccess("保存成功" , Request.get("referer").equals("") ? request.getHeader("referer") : Request.get("referer"));
    }

    /**
    * 更新内容
    * @return
    */
    @RequestMapping("/xiangmujinzhanupdate")
    public String update()
    {
        // 创建实体类
        Xiangmujinzhan post = new Xiangmujinzhan();
        // 将前台表单数据填充到实体类
        if(!Request.get("xiangmuxinxiid").equals(""))
        post.setXiangmuxinxiid(Request.getInt("xiangmuxinxiid"));
            if(!Request.get("xiangmubianhao").equals(""))
        post.setXiangmubianhao(Request.get("xiangmubianhao"));
                if(!Request.get("xiangmumingcheng").equals(""))
        post.setXiangmumingcheng(Request.get("xiangmumingcheng"));
                if(!Request.get("xiangmuleixing").equals(""))
        post.setXiangmuleixing(Request.get("xiangmuleixing"));
                if(!Request.get("riqi").equals(""))
        post.setRiqi(Request.get("riqi"));
                if(!Request.get("shifouyiwancheng").equals(""))
        post.setShifouyiwancheng(Request.get("shifouyiwancheng"));
                if(!Request.get("jinzhanneirong").equals(""))
        post.setJinzhanneirong(util.DownloadRemoteImage.run(Request.get("jinzhanneirong")));
            if(!Request.get("caozuoren").equals(""))
        post.setCaozuoren(Request.get("caozuoren"));
        
        post.setId(Request.getInt("id"));
                service.update(post); // 更新数据
        int charuid = post.getId().intValue();
                        return showSuccess("保存成功" , Request.get("referer")); // 弹出保存成功，并跳转到前台提交的 referer 页面
    }
    /**
     *  后台详情
     */
    @RequestMapping("/xiangmujinzhan_detail")
    public String detail()
    {
        int id = Request.getInt("id");
        Xiangmujinzhan map = service.find(id);  // 根据前台url 参数中的id获取行数据
        request.setAttribute("map" , map);  // 把数据写到前台
        return "xiangmujinzhan_detail";  // 详情页面：WebRoot\xiangmujinzhan_detail.jsp
    }
        /**
    *  删除
    */
    @RequestMapping("/xiangmujinzhan_delete")
    public String delete()
    {
        if(!checkLogin()){
            return showError("尚未登录");
        }
        int id = Request.getInt("id");  // 根据id 删除某行数据
        HashMap map = Query.make("xiangmujinzhan").find(id);

                service.delete(id);// 根据id 删除某行数据
                return showSuccess("删除成功",request.getHeader("referer"));//弹出删除成功，并跳回上一页
    }
}
