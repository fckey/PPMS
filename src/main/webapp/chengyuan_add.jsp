<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@page import="util.*"%>
<%@page import="net.jntoo.db.*"%>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="head.jsp" %>
<script src="js/jquery.validate.js"></script>
<script src="js/datepicker/WdatePicker.js"></script>

<div style="padding: 10px" class="admin-content">




<div class="container"><!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

    <div class="panel panel-default">
        <div class="panel-heading">
            添加成员:
        </div>
        <div class="panel-body">
            <form action="chengyuaninsert.do" method="post" name="form1" id="form1"><!-- form 标签开始 -->
    
                                                        <div class="form-group">
    <div class="row">
        <label style="text-align: right" class="col-sm-2 hiddex-xs">账号<span style="color: red;">*</span></label>
        <div class="col-sm-10">
            
                                                    <input type="text" class="form-control" placeholder="输入账号" style="width:150px;" data-rule-required="true" data-msg-required="请填写账号" remote="checkno.do?checktype=insert&table=chengyuan&col=zhanghao" data-msg-remote="内容重复了" id="zhanghao" name="zhanghao" value=""/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="text-align: right" class="col-sm-2 hiddex-xs">密码<span style="color: red;">*</span></label>
        <div class="col-sm-10">
            
                                                    <input type="password" class="form-control" placeholder="输入密码" style="width:150px;" data-rule-required="true" data-msg-required="请填写密码" id="mima" name="mima" value=""/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="text-align: right" class="col-sm-2 hiddex-xs">姓名<span style="color: red;">*</span></label>
        <div class="col-sm-10">
            
                                                    <input type="text" class="form-control" placeholder="输入姓名" style="width:150px;" data-rule-required="true" data-msg-required="请填写姓名" id="xingming" name="xingming" value=""/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="text-align: right" class="col-sm-2 hiddex-xs">性别<span style="color: red;">*</span></label>
        <div class="col-sm-10">
            
                                                    <select class="form-control class_xingbie2" data-value="" data-rule-required="true" data-msg-required="请填写性别" id="xingbie" name="xingbie" style="width:250px">
<option value="男">男</option>
<option value="女">女</option>

</select>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="text-align: right" class="col-sm-2 hiddex-xs">生日<span style="color: red;">*</span></label>
        <div class="col-sm-10">
            
                                                    <input type="text" class="form-control" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',lang:'zh-cn'})" style="width:120px;" data-rule-required="true" data-msg-required="请填写生日" id="shengri" name="shengri" readonly="readonly" value=""/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="text-align: right" class="col-sm-2 hiddex-xs">年龄<span style="color: red;">*</span></label>
        <div class="col-sm-10">
            
                                                    <input type="number" class="form-control" placeholder="输入年龄" style="width:150px;" data-rule-required="true" data-msg-required="请填写年龄" number="true" data-msg-number="输入一个有效数字" id="nianling" name="nianling" value=""/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="text-align: right" class="col-sm-2 hiddex-xs">电话<span style="color: red;">*</span></label>
        <div class="col-sm-10">
            
                                                    <input type="text" class="form-control" placeholder="输入电话" style="width:150px;" data-rule-required="true" data-msg-required="请填写电话" phone="true" data-msg-phone="请输入正确手机号码" id="dianhua" name="dianhua" value=""/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="text-align: right" class="col-sm-2 hiddex-xs">项目</label>
        <div class="col-sm-10">
            
                                                    <select class="form-control class_xiangmu3" data-value="" id="xiangmu" name="xiangmu" style="width:250px">
<ssm:sql var="select" type="select">SELECT * FROM xiangmuxinxi ORDER BY id desc</ssm:sql>
<c:forEach items="${select}" var="m"><c:set var="m" value="${m}" scope="request" />
<option value="${m.xiangmumingcheng}">${m.xiangmumingcheng}</option>
</c:forEach>

</select>                                            
        </div>
        
    </div>
</div>
                                                    <div class="form-group">
    <div class="row">
        <label style="text-align: right" class="col-sm-2 hiddex-xs"> </label>
        <div class="col-sm-10">
            
                                        
                                                                                                                
                    <button type="submit" class="btn btn-primary" name="Submit">
    提交
</button>
                    <button type="reset" class="btn btn-default" name="Submit2">
    重置
</button>

                
        </div>
        
    </div>
</div>
            
<!--form标签结束--></form>
        </div>
    </div>

<!-- container定宽，并剧中结束 --></div>





<script>
    $(function () {
        $('#form1').validate();
    });
</script>



</div>
<%@ include file="foot.jsp" %>
