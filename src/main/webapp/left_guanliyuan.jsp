<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.util.*" %>
<%@page import="util.*" %>
<%@page import="net.jntoo.db.*" %>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<h2><span class="icon-user"></span> 账号管理</h2>
<ul>
    <li><a href="admins_list.do" target="right"><span class="icon-caret-right"></span> 管理员账号管理</a></li>
    <li><a href="admins_add.do" target="right"><span class="icon-caret-right"></span> 管理员账号添加</a></li>
    <li><a href="mod.do" target="right"><span class="icon-caret-right"></span> 密码修改</a></li>
</ul>
<h2><span class="icon-user"></span> 成员管理</h2>
<ul>
    <li><a href="chengyuan_add.do" target="right"><span class="icon-caret-right"></span> 成员添加</a></li>
    <li><a href="chengyuan_list.do" target="right"><span class="icon-caret-right"></span> 成员查询</a></li>
</ul>
<h2><span class="icon-user"></span> 专家管理</h2>
<ul>
    <li><a href="zhuanjia_add.do" target="right"><span class="icon-caret-right"></span> 专家添加</a></li>
    <li><a href="zhuanjia_list.do" target="right"><span class="icon-caret-right"></span> 专家查询</a></li>
    <li><a href="zhidaoxiangmu_list.do" target="right"><span class="icon-caret-right"></span> 指导项目查询</a></li>
</ul>
<h2><span class="icon-user"></span> 项目信息管理</h2>
<ul>
    <li><a href="xiangmuxinxi_add.do" target="right"><span class="icon-caret-right"></span> 项目信息添加</a></li>
    <li><a href="xiangmuxinxi_list.do" target="right"><span class="icon-caret-right"></span> 项目信息查询</a></li>
</ul>
<h2><span class="icon-user"></span> 园区资产管理</h2>
<ul>
    <li><a href="yuanquzichan_add.do" target="right"><span class="icon-caret-right"></span> 园区资产添加</a></li>
    <li><a href="yuanquzichan_list.do" target="right"><span class="icon-caret-right"></span> 园区资产查询</a></li>
    <li><a href="zichanfenpei_list.do" target="right"><span class="icon-caret-right"></span> 资产分配查询</a></li>
</ul>
<h2><span class="icon-user"></span> 资产消耗管理</h2>
<ul>

    <li><a href="zichanxiaohao_list.do" target="right"><span class="icon-caret-right"></span> 资产消耗查询</a></li>
</ul>
<%--
<h2><span class="icon-user"></span> 统计管理</h2>
<ul>

    <li><a href="total_fpqktj.jsp" target="right"><span class="icon-caret-right"></span> 资产消耗查询</a></li>
</ul>
--%>
