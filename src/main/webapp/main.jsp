<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.util.*" %>
<%@page import="util.*" %>
<%@page import="net.jntoo.db.*" %>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <meta name="renderer" content="webkit">
    <title>创业园管理系统</title>
    <link rel="stylesheet" href="htstyle/css/pintuer.css">
    <link rel="stylesheet" href="htstyle/css/admin.css">
    <script src="js/jquery.js"></script>
</head>
<body style="background-color:#f2f9fd;">
<div class="header bg-main">
    <div class="logo margin-big-left fadein-top">
        <h1>
            <c:choose>
                <c:when test="${sessionScope.touxiang != null && sessionScope.touxiang !=  '' }">

                    <img src="${sessionScope.touxiang}" class="radius-circle rotate-hover"
                         style="width: 50px;height: 50px;" alt=""/>
                </c:when><c:otherwise>
                <img src="htstyle/images/y.jpg" class="radius-circle rotate-hover" style="width: 50px;height: 50px;"
                     alt=""/>
            </c:otherwise></c:choose>
            创业园管理系统
        </h1>
    </div>
    <div class="head-l">

        <a class="button button-little bg-red" href="logout.do" onclick="return confirm('确定退出系统？')"><span
                class="icon-power-off"></span> 退出登录</a></div>
</div>
<div class="leftnav">
    <div class="leftnav-title"><strong><span class="icon-list"></span>菜单列表</strong></div>
    <div class="leftnav-list" id="leftNav">
        <c:choose>
            <c:when test="${'管理员' == sessionScope.cx }">

                <%@ include file="left_guanliyuan.jsp" %>
            </c:when></c:choose>
        <c:choose>
            <c:when test="${'成员' == sessionScope.cx }">

                <%@ include file="left_chengyuan.jsp" %>
            </c:when></c:choose>
    </div>
</div>

<ul class="bread">
    <li><a href="sy.do" target="right" class="icon-home syHome"> 首页</a></li>
    <li style="display: none"><a href="javascript:;" target="right" id="a_leader_txt2"> </a></li>
    <li style="display: none"><a href="sy.do" target="right" id="a_leader_txt">网站首页</a></li>
    <!--<li><b>当前语言：</b><span style="color:red;">中文</php></span>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;切换语言：<a href="##">中文</a> &nbsp;&nbsp;<a href="##">英文</a></li>-->
</ul>
<div class="admin">
    <iframe scrolling="auto" rameborder="0" src="sy.do" name="right" width="100%" height="100%"></iframe>
</div>
<script>
    $(function () {
        $("#leftNav>h2").click(function () {
            $("#leftNav>ul.active").stop().slideUp(200).removeClass('active');
            $("#leftNav>h2.on").removeClass('on');
            $(this).next().slideDown(200).addClass('active');
            $(this).addClass("on");
        });
        $("#leftNav>ul>li>a").click(function () {
            $("#a_leader_txt").text($(this).text());
            $("#a_leader_txt").attr('href', $(this).attr('href')).parent().show();
            $('#a_leader_txt2').text($(this).parents('ul').prev().text()).parent().show();
            $(".leftnav ul li a").removeClass("on");
            $(this).addClass("on");
        });
        $('#a_leader_txt').click(function (e) {
            if (this.href == 'javascript:;') {
                e.preventDefault();
                return false;
            }
        });
        $('.syHome').click(function (e) {
            $('#a_leader_txt2').parent().hide();
            $('#a_leader_txt').parent().hide();
        })
        $("#leftNav>h2:eq(0)").click();
    });
</script>
</body>
</html>
