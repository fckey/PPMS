<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.util.*" %>
<%@page import="util.*" %>
<%@page import="net.jntoo.db.*" %>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="head.jsp" %>

<div style="padding: 10px" class="admin-content">


    <div class="panel panel-default">
        <div class="panel-heading">
        <span class="module-name">
            项目信息        </span>
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

                        <input type="text" class="form-control" style="" name="xiangmubianhao"
                               value="${param.xiangmubianhao}"/>
                    </div>
                    <div class="form-group">
                        项目名称

                        <input type="text" class="form-control" style="" name="xiangmumingcheng"
                               value="${param.xiangmumingcheng}"/>
                    </div>

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
                        <th> 项目编号</th>
                        <th> 项目名称</th>
                        <th> 项目类型</th>
                        <th> 项目文档</th>
                        <th> 添加人</th>
                        <th> 项目进展</th>
                        <th width="120"> 添加时间</th>
                        <th width="120" data-field="handler">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:set var="i" value="0"/><c:forEach items="${list}" var="map"><c:set var="i" value="${i+1}"/><c:set
                            var="map" value="${map}" scope="request"/>
                        <tr id="${map.id}" pid="">
                            <td width="30" align="center">
                                <label>
                                        ${i}
                                </label>
                            </td>
                            <td> ${map.xiangmubianhao} </td>
                            <td> ${map.xiangmumingcheng} </td>
                            <td> ${map.xiangmuleixing} </td>
                            <td><c:choose>
                                <c:when test="${map.xiangmuwendang == '' }">
                                    无文件</c:when><c:otherwise><a href="${map.xiangmuwendang}"
                                                                target="_blank">下载</a></c:otherwise></c:choose></td>
                            <td> ${map.tianjiaren} </td>
                            <td> ${map.xiangmujinzhan} </td>
                            <td> ${Info.subStr(map.addtime , 19 , "")} </td>
                            <td align="center">


                                <a href="xiangmuxinxi_detail.do?id=${map.id}">详情</a>
                                <c:choose>
                                    <c:when test="${'管理员' == sessionScope.cx }">
                                        <a href="xiangmuxinxi_updt.do?id=${map.id}">修改</a>
                                        <a href="xiangmuxinxi_delete.do?id=${map.id}" onclick="return confirm('确定要删除？')">删除</a>
                                    </c:when></c:choose>

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
