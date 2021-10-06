<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@page import="util.*"%>
<%@page import="net.jntoo.db.*"%>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="head.jsp" %>
<script src="js/jquery.validate.js"></script>
<link rel="stylesheet" href="js/layer/theme/default/layer.css"/>
<script src="js/layer/layer.js"></script>
<link rel="stylesheet" href="js/umeditor/themes/default/css/umeditor.css"/>
<script src="js/umeditor/umeditor.config.js"></script>
<script src="js/umeditor/umeditor.min.js"></script>

<div style="padding: 10px" class="admin-content">




<div class="container"><!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

    <div class="panel panel-default">
        <div class="panel-heading">
            编辑项目信息:
        </div>
        <div class="panel-body">
            <form action="xiangmuxinxiupdate.do" method="post" name="form1" id="form1"><!-- form 标签开始 -->
    
                                                        <div class="form-group">
    <div class="row">
        <label style="text-align: right" class="col-sm-2 hiddex-xs">项目编号</label>
        <div class="col-sm-10">
            
                                                    <input type="text" class="form-control" placeholder="输入项目编号" style="width:150px;" readonly="readonly" id="xiangmubianhao" name="xiangmubianhao" value="${Info.html(mmm.xiangmubianhao)}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="text-align: right" class="col-sm-2 hiddex-xs">项目名称<span style="color: red;">*</span></label>
        <div class="col-sm-10">
            
                                                    <input type="text" class="form-control" placeholder="输入项目名称" style="width:250px;" data-rule-required="true" data-msg-required="请填写项目名称" remote="checkno.do?checktype=update&id=${mmm.id}&table=xiangmuxinxi&col=xiangmumingcheng" data-msg-remote="内容重复了" id="xiangmumingcheng" name="xiangmumingcheng" value="${Info.html(mmm.xiangmumingcheng)}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="text-align: right" class="col-sm-2 hiddex-xs">项目类型</label>
        <div class="col-sm-10">
            
                                                    <input type="text" class="form-control" placeholder="输入项目类型" style="width:150px;" id="xiangmuleixing" name="xiangmuleixing" value="${Info.html(mmm.xiangmuleixing)}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="text-align: right" class="col-sm-2 hiddex-xs">项目文档</label>
        <div class="col-sm-10">
            
                                                    <div class="input-group" style="width:250px">
    <input type="text" class="form-control" id="xiangmuwendang" name="xiangmuwendang" value="${Info.html(mmm.xiangmuwendang)}"/>

    <span class="input-group-btn"><button type="button" class="btn btn-default" onclick="layer.open({type:2,title:'上传文件',fixed:true,shadeClose:true,shade:0.5,area:['320px','150px'],content:'upload.html?result=xiangmuwendang'})">
    上传文件
</button></span>
</div>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="text-align: right" class="col-sm-2 hiddex-xs">项目简介</label>
        <div class="col-sm-10">
            
                                                    <textarea id="xiangmujianjie" name="xiangmujianjie" style="max-width: 750px;width:100%; height: 300px;">${Info.html(mmm.xiangmujianjie)}</textarea><script>
            (function(){
                var um = UM.getEditor('xiangmujianjie');
            })();
            </script>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="text-align: right" class="col-sm-2 hiddex-xs">添加人</label>
        <div class="col-sm-10">
            
                                                    <input type="text" class="form-control" placeholder="输入添加人" style="width:150px;" readonly="readonly" id="tianjiaren" name="tianjiaren" value="${mmm.tianjiaren}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="text-align: right" class="col-sm-2 hiddex-xs">项目进展</label>
        <div class="col-sm-10">
            
                                                    <select class="form-control class_xiangmujinzhan1" data-value="${Info.html(mmm.xiangmujinzhan)}" id="xiangmujinzhan" name="xiangmujinzhan" style="width:250px">
<option value="待开始">待开始</option>
<option value="进行中">进行中</option>
<option value="已完成">已完成</option>

</select>
<script>
$(".class_xiangmujinzhan1").val($(".class_xiangmujinzhan1").attr("data-value"))</script>
                                            
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
