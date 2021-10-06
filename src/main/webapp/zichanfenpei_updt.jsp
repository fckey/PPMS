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
            编辑资产分配:
        </div>
        <div class="panel-body">
            <form action="zichanfenpeiupdate.do" method="post" name="form1" id="form1"><!-- form 标签开始 -->
    
                                    <input type="hidden" name="yuanquzichanid" value="${mmm.yuanquzichanid}"/>                                        <div class="form-group">
    <div class="row">
        <label style="text-align: right" class="col-sm-2 hiddex-xs">分配编号</label>
        <div class="col-sm-10">
            
                                                    <input type="text" class="form-control" placeholder="输入分配编号" style="width:150px;" readonly="readonly" id="fenpeibianhao" name="fenpeibianhao" value="${Info.html(mmm.fenpeibianhao)}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="text-align: right" class="col-sm-2 hiddex-xs">资产编号</label>
        <div class="col-sm-10">
            
                                                    ${mmm.zichanbianhao}<input type="hidden" id="zichanbianhao" name="zichanbianhao" value="${Info.html(mmm.zichanbianhao)}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="text-align: right" class="col-sm-2 hiddex-xs">资产名称</label>
        <div class="col-sm-10">
            
                                                    ${mmm.zichanmingcheng}<input type="hidden" id="zichanmingcheng" name="zichanmingcheng" value="${Info.html(mmm.zichanmingcheng)}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="text-align: right" class="col-sm-2 hiddex-xs">资产类型</label>
        <div class="col-sm-10">
            
                                                    ${mmm.zichanleixing}<input type="hidden" id="zichanleixing" name="zichanleixing" value="${Info.html(mmm.zichanleixing)}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="text-align: right" class="col-sm-2 hiddex-xs">分配到项目<span style="color: red;">*</span></label>
        <div class="col-sm-10">
            
                                                    <select class="form-control class_fenpeidaoxiangmu15" data-value="${Info.html(mmm.fenpeidaoxiangmu)}" data-rule-required="true" data-msg-required="请填写分配到项目" id="fenpeidaoxiangmu" name="fenpeidaoxiangmu" style="width:250px">
<ssm:sql var="select" type="select">SELECT * FROM xiangmuxinxi ORDER BY id desc</ssm:sql>
<c:forEach items="${select}" var="m"><c:set var="m" value="${m}" scope="request" />
<option value="${m.xiangmumingcheng}">${m.xiangmumingcheng}</option>
</c:forEach>

</select>
<script>
$(".class_fenpeidaoxiangmu15").val($(".class_fenpeidaoxiangmu15").attr("data-value"))</script>
                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="text-align: right" class="col-sm-2 hiddex-xs">配分数量<span style="color: red;">*</span></label>
        <div class="col-sm-10">
            
                                                    <input type="number" class="form-control" placeholder="输入配分数量" style="width:150px;" data-rule-required="true" data-msg-required="请填写配分数量" number="true" data-msg-number="输入一个有效数字" id="peifenshuliang" name="peifenshuliang" value="${Info.html(mmm.peifenshuliang)}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="text-align: right" class="col-sm-2 hiddex-xs">分配备注</label>
        <div class="col-sm-10">
            
                                                    <textarea style="width: 80%;height: 120px" class="form-control" placeholder="输入分配备注" id="fenpeibeizhu" name="fenpeibeizhu">${Info.html(mmm.fenpeibeizhu)}</textarea>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="text-align: right" class="col-sm-2 hiddex-xs">操作人</label>
        <div class="col-sm-10">
            
                                                    <input type="text" class="form-control" placeholder="输入操作人" style="width:150px;" readonly="readonly" id="caozuoren" name="caozuoren" value="${mmm.caozuoren}"/>                                            
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
