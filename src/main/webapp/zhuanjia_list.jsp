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
            专家        </span>
            <span>列表</span>
        </div>
        <div class="panel-body">
            <div class="pa10 bg-warning">
                <form class="form-inline" id="formSearch" action="?"><!-- form 标签开始 -->

                    <div class="form-group">


                        <i class="glyphicon glyphicon-search"></i>

                    </div>

                    <div class="form-group">
                        专家编号

                        <input type="text" class="form-control" style="" name="zhuanjiabianhao"
                               value="${param.zhuanjiabianhao}"/>
                    </div>
                    <div class="form-group">
                        专家姓名

                        <input type="text" class="form-control" style="" name="zhuanjiaxingming"
                               value="${param.zhuanjiaxingming}"/>
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
                        <th> 专家编号</th>
                        <th> 专家姓名</th>
                        <th> 专家性别</th>
                        <th> 电话</th>
                        <th> 籍贯</th>
                        <th width="120"> 添加时间</th>
                        <th width="220" data-field="handler">操作</th>
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
                            <td> ${map.zhuanjiabianhao} </td>
                            <td> ${map.zhuanjiaxingming} </td>
                            <td> ${map.zhuanjiaxingbie} </td>
                            <td> ${map.dianhua} </td>
                            <td> ${map.jiguan} </td>
                            <td> ${Info.subStr(map.addtime , 19 , "")} </td>
                            <td align="center">
                                <c:choose>
                                    <c:when test="${'成员' == sessionScope.cx }">

                                        <a class="btn btn-default" href="zhidaoxiangmu_list.do?zhuanjiabianhao=${map.zhuanjiabianhao}">指导项目查询</a>
                                    </c:when></c:choose>

                                <c:choose>
                                    <c:when test="${'管理员' == sessionScope.cx }">

                                        <a class="btn btn-default" href="zhidaoxiangmu_add.do?id=${map.id}">指导项目</a>
                                        <a class="btn btn-default" href="zhidaoxiangmu_list.do?zhuanjiabianhao=${map.zhuanjiabianhao}">指导项目查询</a>
                                        <a href="zhuanjia_updt.do?id=${map.id}">编辑</a>
                                        <a href="zhuanjia_delete.do?id=${map.id}" onclick="return confirm('确定要删除？')">删除</a>
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
