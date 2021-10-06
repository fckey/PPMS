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
            编辑指导项目:
        </div>
        <div class="panel-body">
            <form action="zhidaoxiangmuupdate.do" method="post" name="form1" id="form1"><!-- form 标签开始 -->
    
                                    <input type="hidden" name="zhuanjiaid" value="${mmm.zhuanjiaid}"/>                                        <div class="form-group">
    <div class="row">
        <label style="text-align: right" class="col-sm-2 hiddex-xs">专家编号</label>
        <div class="col-sm-10">
            
                                                    ${mmm.zhuanjiabianhao}<input type="hidden" id="zhuanjiabianhao" name="zhuanjiabianhao" value="${Info.html(mmm.zhuanjiabianhao)}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="text-align: right" class="col-sm-2 hiddex-xs">专家姓名</label>
        <div class="col-sm-10">
            
                                                    ${mmm.zhuanjiaxingming}<input type="hidden" id="zhuanjiaxingming" name="zhuanjiaxingming" value="${Info.html(mmm.zhuanjiaxingming)}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="text-align: right" class="col-sm-2 hiddex-xs">指导项目<span style="color: red;">*</span></label>
        <div class="col-sm-10">
            
                                                    <div class="class_zhidaoxiangmu13" data-value="${Info.html(mmm.zhidaoxiangmu)}"><ssm:sql var="select" type="select">SELECT * FROM xiangmuxinxi ORDER BY id desc</ssm:sql>
<c:forEach items="${select}" var="m"><c:set var="m" value="${m}" scope="request" />
 <label><input type="checkbox" data-rule-required="true" data-msg-required="请填写指导项目" id="zhidaoxiangmu" name="zhidaoxiangmu" value="${m.xiangmumingcheng}" label="${m.xiangmumingcheng}"/> </label> 
</c:forEach>
</div>
<script>
(function(){
                        var dataValue = "${Info.html(mmm.zhidaoxiangmu)}".split(",");
                        for(var i=0;i<dataValue.length;i++){
                            $(".clas_class_zhidaoxiangmu13 :checkbox[value='"+dataValue[i]+"']").prop("checked" , true);
                        }
                    })()</script>
                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="text-align: right" class="col-sm-2 hiddex-xs">备注</label>
        <div class="col-sm-10">
            
                                                    <textarea style="width: 80%;height: 120px" class="form-control" placeholder="输入备注" id="beizhu" name="beizhu">${Info.html(mmm.beizhu)}</textarea>                                            
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
