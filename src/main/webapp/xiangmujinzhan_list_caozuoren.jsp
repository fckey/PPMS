<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@page import="util.*"%>
<%@page import="net.jntoo.db.*"%>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="head.jsp" %>

<div style="padding: 10px" class="admin-content">




<div class="panel panel-default">
    <div class="panel-heading">
        <span class="module-name">
            项目进展        </span>
        <span>列表</span>
    </div>
    <div class="panel-body">
        <div class="pa10 bg-warning">
            <form class="form-inline" id="formSearch" action="?"><!-- form 标签开始 -->
    
                <div class="form-group">
    
    
                    <i class="glyphicon glyphicon-search"></i>
                
</div>
                                
                                                                                <div class="form-group">
    项目编号
    
                            <input type="text" class="form-control" style="" name="xiangmubianhao" value="${param.xiangmubianhao}"/>                        
</div>
                                                                <div class="form-group">
    项目名称
    
                            <input type="text" class="form-control" style="" name="xiangmumingcheng" value="${param.xiangmumingcheng}"/>                        
</div>
                                                                                                        <div class="form-group">
    是否已完成
    
                            <select class="form-control class_shifouyiwancheng15" data-value="${param.shifouyiwancheng}" data-rule-required="true" data-msg-required="请填写是否已完成" id="shifouyiwancheng" name="shifouyiwancheng">
<option value="">请选择</option><option value="否">否</option>
<option value="是">是</option>

</select>
<script>
$(".class_shifouyiwancheng15").val($(".class_shifouyiwancheng15").attr("data-value"))</script>
                        
</div>
                                                                            <select class="form-control" name="order" id="orderby">

                    <option value="id">按发布时间</option>
                                    
</select>
                <select class="form-control" name="sort" id="sort">

                    <option value="desc">倒序</option>
                    <option value="asc">升序</option>
                
</select>
                <script>$("#orderby").val("${orderby}");$("#sort").val("${sort}");</script>
                <button type="submit" class="btn btn-default">
    搜索
</button>

                
            
<!--form标签结束--></form>
        </div>



        
                    <div class="list-table">
                <table width="100%" border="1" class="table table-list table-bordered table-hover">
                    <thead>
                    <tr align="center">
                        <th width="60" data-field="item">序号</th>
                        <th> 项目编号  </th>
<th> 项目名称  </th>
<th> 项目类型  </th>
<th> 日期  </th>
<th> 是否已完成  </th>
<th> 操作人  </th>
                                                                        <th width="220" data-field="handler">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:set var="i" value="0" /><c:forEach items="${list}" var="map"><c:set var="i" value="${i+1}" /><c:set var="map" value="${map}" scope="request" />
                    <tr id="${map.id}" pid="">
                        <td width="30" align="center">
                            <label>
                                                                ${i}
                            </label>
                        </td>
                        <td> ${map.xiangmubianhao} </td>
<td> ${map.xiangmumingcheng} </td>
<td> ${map.xiangmuleixing} </td>
<td> ${map.riqi} </td>
<td> ${map.shifouyiwancheng} </td>
<td> ${map.caozuoren} </td>
                                                                        <td align="center">

                            
                                                        
                            
                                                                <a href="xiangmujinzhan_detail.do?id=${map.id}">详情</a>
                                                                <a href="xiangmujinzhan_updt.do?id=${map.id}">编辑</a>
                                                                <a href="xiangmujinzhan_delete.do?id=${map.id}" onclick="return confirm('确定要删除？')">删除</a>
                                                        <!--qiatnalijne-->
                        </td>
                    </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
            
        ${page.info}
            </div>



</div>








</div>
<%@ include file="foot.jsp" %>
