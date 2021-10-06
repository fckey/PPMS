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
            园区资产        </span>
            <span>列表</span>
        </div>
        <div class="panel-body">
            <div class="pa10 bg-warning">
                <form class="form-inline" id="formSearch" action="?"><!-- form 标签开始 -->

                    <div class="form-group">


                        <i class="glyphicon glyphicon-search"></i>

                    </div>

                    <div class="form-group">
                        资产编号

                        <input type="text" class="form-control" style="" name="zichanbianhao"
                               value="${param.zichanbianhao}"/>
                    </div>
                    <div class="form-group">
                        资产名称

                        <input type="text" class="form-control" style="" name="zichanmingcheng"
                               value="${param.zichanmingcheng}"/>
                    </div>
                    <div class="form-group">
                        资产类型

                        <input type="text" class="form-control" style="" name="zichanleixing"
                               value="${param.zichanleixing}"/>
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
                        <th> 资产编号</th>
                        <th> 资产名称</th>
                        <th> 资产类型</th>
                        <th> 资产数量</th>
                        <th> 资产简介</th>
                        <th width="120"> 添加时间</th>
                        <th width="200" data-field="handler">操作</th>
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
                            <td> ${map.zichanbianhao} </td>
                            <td> ${map.zichanmingcheng} </td>
                            <td> ${map.zichanleixing} </td>
                            <td> ${map.zichanshuliang} </td>
                            <td> ${map.zichanjianjie} </td>
                            <td> ${Info.subStr(map.addtime , 19 , "")} </td>
                            <td align="center">

                                <c:choose>
                                    <c:when test="${'管理员' == sessionScope.cx }">

                                        <a href="zichanfenpei_add.do?id=${map.id}">资产分配</a>

                                        <a href="zichanxiaohao_add.do?id=${map.id}">资产消耗</a>
                                        <a href="yuanquzichan_updt.do?id=${map.id}">编辑</a>
                                        <a href="yuanquzichan_delete.do?id=${map.id}" onclick="return confirm('确定要删除？')">删除</a>
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
