<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@page import="util.*"%>
<%@page import="net.jntoo.db.*"%>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="head.jsp" %>
<script src="js/jquery.validate.js"></script>

<div style="padding: 10px" class="admin-content">




<div class="container"><!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

    <div class="panel panel-default">
        <div class="panel-heading">
            编辑专家:
        </div>
        <div class="panel-body">
            <form action="zhuanjiaupdate.do" method="post" name="form1" id="form1"><!-- form 标签开始 -->
    
                                                        <div class="form-group">
    <div class="row">
        <label style="text-align: right" class="col-sm-2 hiddex-xs">专家编号</label>
        <div class="col-sm-10">
            
                                                    <input type="text" class="form-control" placeholder="输入专家编号" style="width:150px;" readonly="readonly" id="zhuanjiabianhao" name="zhuanjiabianhao" value="${Info.html(mmm.zhuanjiabianhao)}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="text-align: right" class="col-sm-2 hiddex-xs">专家姓名<span style="color: red;">*</span></label>
        <div class="col-sm-10">
            
                                                    <input type="text" class="form-control" placeholder="输入专家姓名" style="width:150px;" data-rule-required="true" data-msg-required="请填写专家姓名" id="zhuanjiaxingming" name="zhuanjiaxingming" value="${Info.html(mmm.zhuanjiaxingming)}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="text-align: right" class="col-sm-2 hiddex-xs">专家性别<span style="color: red;">*</span></label>
        <div class="col-sm-10">
            
                                                    <select class="form-control class_zhuanjiaxingbie10" data-value="${Info.html(mmm.zhuanjiaxingbie)}" data-rule-required="true" data-msg-required="请填写专家性别" id="zhuanjiaxingbie" name="zhuanjiaxingbie" style="width:250px">
<option value="男">男</option>
<option value="女">女</option>

</select>
<script>
$(".class_zhuanjiaxingbie10").val($(".class_zhuanjiaxingbie10").attr("data-value"))</script>
                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="text-align: right" class="col-sm-2 hiddex-xs">电话<span style="color: red;">*</span></label>
        <div class="col-sm-10">
            
                                                    <input type="text" class="form-control" placeholder="输入电话" style="width:150px;" data-rule-required="true" data-msg-required="请填写电话" phone="true" data-msg-phone="请输入正确手机号码" id="dianhua" name="dianhua" value="${Info.html(mmm.dianhua)}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="text-align: right" class="col-sm-2 hiddex-xs">籍贯<span style="color: red;">*</span></label>
        <div class="col-sm-10">
            
                                                    <input type="text" class="form-control" placeholder="输入籍贯" style="width:150px;" data-rule-required="true" data-msg-required="请填写籍贯" id="jiguan" name="jiguan" value="${Info.html(mmm.jiguan)}"/>                                            
        </div>
        
    </div>
</div>
                                                    <div class="form-group">
    <div class="row">
        <label style="text-align: right" class="col-sm-2 hiddex-xs"> </label>
        <div class="col-sm-10">
            
                                            <input name="id" value="${mmm.id}" type="hidden"/>
                        <input name="referer" value="<%=request.getHeader("referer")%>" type="hidden"/>
                        <input name="updtself" value="${updtself}" type="hidden"/>
                                        
                    
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
