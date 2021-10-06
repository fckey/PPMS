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
    <title>创业园管理系统登录</title>
    <link rel="stylesheet" href="htstyle/css/pintuer.css">
    <link rel="stylesheet" href="htstyle/css/admin.css">
    <script src="js/jquery.js"></script>
    <script src="htstyle/js/pintuer.js"></script>
</head>
<body>
<div class="bg"></div>
<div class="container">
    <div class="line bouncein">
        <div class="xs6 xm4 xs3-move xm4-move">
            <div style="height:150px;"></div>
            <div class="media media-y margin-big-bottom">
            </div>
            <form action="authAdminLogin.do?ac=adminlogin&a=a" method="post">
                <div class="panel loginbox">
                    <div class="text-center margin-big padding-big-top"><h1>创业园管理系统</h1></div>
                    <div class="panel-body" style="padding:30px; padding-bottom:10px; padding-top:10px;">
                        <div class="form-group">
                            <div class="field field-icon-right">
                                <input type="text" class="input input-big" name="username" placeholder="登录账号"
                                       data-validate="required:请填写账号"/>
                                <span class="icon icon-user margin-small"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="field field-icon-right">
                                <input type="password" class="input input-big" name="pwd" placeholder="登录密码"
                                       data-validate="required:请填写密码"/>
                                <span class="icon icon-key margin-small"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="field">
                                <input type="text" class="input input-big" name="pagerandom" placeholder="填写右侧的验证码"
                                       data-validate="required:请填写右侧的验证码"/>
                                <img src="captcha.do" alt="" width="100" height="32"
                                     class="passcode" style="width: 100px;height:43px;cursor:pointer;"
                                     onclick="this.src='captcha.do?rand='+Math.floor(Math.random()*100000)">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="field">
                                <select style="display: block;width: 100%;padding: 10px;border: 1px solid #dedede"
                                        name="cx">
                                    <option value="管理员">管理员</option>
                                    <option value="成员">成员</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div style="padding:30px;"><input type="submit"
                                                      class="button button-block bg-main text-big input-big" value="登录">
                        <a href="chengyuan_add1.jsp">注册</a>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

</body>
</html>
