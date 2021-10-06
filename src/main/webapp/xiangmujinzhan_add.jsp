<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@page import="util.*"%>
<%@page import="net.jntoo.db.*"%>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="head.jsp" %>
<script src="js/jquery.validate.js"></script>
<script src="js/datepicker/WdatePicker.js"></script>
<link rel="stylesheet" href="js/umeditor/themes/default/css/umeditor.css"/>
<script src="js/umeditor/umeditor.config.js"></script>
<script src="js/umeditor/umeditor.min.js"></script>

<div style="padding: 10px" class="admin-content">




<div class="container"><!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

    <div class="panel panel-default">
        <div class="panel-heading">
            添加项目进展:
        </div>
        <div class="panel-body">
            <form action="xiangmujinzhaninsert.do" method="post" name="form1" id="form1"><!-- form 标签开始 -->
    
                                    <input type="hidden" name="xiangmuxinxiid" value="${param.id}"/>                                        <div class="form-group">
    <div class="row">
        <label style="text-align: right" class="col-sm-2 hiddex-xs">项目编号</label>
        <div class="col-sm-10">
            
                                                    ${readMap.xiangmubianhao}<input type="hidden" id="xiangmubianhao" name="xiangmubianhao" value="${Info.html(readMap.xiangmubianhao)}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="text-align: right" class="col-sm-2 hiddex-xs">项目名称</label>
        <div class="col-sm-10">
            
                                                    ${readMap.xiangmumingcheng}<input type="hidden" id="xiangmumingcheng" name="xiangmumingcheng" value="${Info.html(readMap.xiangmumingcheng)}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="text-align: right" class="col-sm-2 hiddex-xs">项目类型</label>
        <div class="col-sm-10">
            
                                                    ${readMap.xiangmuleixing}<input type="hidden" id="xiangmuleixing" name="xiangmuleixing" value="${Info.html(readMap.xiangmuleixing)}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="text-align: right" class="col-sm-2 hiddex-xs">日期<span style="color: red;">*</span></label>
        <div class="col-sm-10">
            
                                                    <input type="text" class="form-control" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',lang:'zh-cn'})" style="width:120px;" data-rule-required="true" data-msg-required="请填写日期" id="riqi" name="riqi" readonly="readonly" value=""/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="text-align: right" class="col-sm-2 hiddex-xs">是否已完成<span style="color: red;">*</span></label>
        <div class="col-sm-10">
            
                                                    <select class="form-control class_shifouyiwancheng16" data-value="" data-rule-required="true" data-msg-required="请填写是否已完成" id="shifouyiwancheng" name="shifouyiwancheng" style="width:250px">
<option value="否">否</option>
<option value="是">是</option>

</select>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="text-align: right" class="col-sm-2 hiddex-xs">进展内容</label>
        <div class="col-sm-10">
            
                                                    <textarea id="jinzhanneirong" name="jinzhanneirong" style="max-width: 750px;width:100%; height: 300px;"></textarea><script>
            (function(){
                var um = UM.getEditor('jinzhanneirong');
            })();
            </script>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="text-align: right" class="col-sm-2 hiddex-xs">操作人</label>
        <div class="col-sm-10">
            
                                                    <input type="text" class="form-control" placeholder="输入操作人" style="width:150px;" readonly="readonly" id="caozuoren" name="caozuoren" value="${sessionScope.username}"/>                                            
        </div>
        
    </div>
</div>
                                <div class="form-group">
    <div class="row">
        <label style="text-align: right" class="col-sm-2 hiddex-xs"> </label>
        <div class="col-sm-10">
            
                                                                <input name="referer" value="<%=request.getHeader("referer")%>" type="hidden"/>
                    
                                                                                                                
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
