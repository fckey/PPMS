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
            指导项目        </span>
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
                    <div class="form-group">
                        指导项目

                        <select class="form-control class_zhidaoxiangmu11" data-value="${param.zhidaoxiangmu}"
                                data-rule-required="true" data-msg-required="请填写指导项目" id="zhidaoxiangmu"
                                name="zhidaoxiangmu">
                            <option value="">请选择</option>
                            <ssm:sql var="select" type="select">SELECT * FROM xiangmuxinxi ORDER BY id desc</ssm:sql>
                            <c:forEach items="${select}" var="m"><c:set var="m" value="${m}" scope="request"/>
                                <option value="${m.xiangmumingcheng}">${m.xiangmumingcheng}</option>
                            </c:forEach>

                        </select>
                        <script>
                            $(".class_zhidaoxiangmu11").val($(".class_zhidaoxiangmu11").attr("data-value"))</script>

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
                        <th> 指导项目</th>
                        <th> 备注</th>
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
                            <td> ${map.zhuanjiabianhao} </td>
                            <td> ${map.zhuanjiaxingming} </td>
                            <td> ${map.zhidaoxiangmu} </td>
                            <td> ${map.beizhu} </td>
                            <td> ${Info.subStr(map.addtime , 19 , "")} </td>
                            <td align="center">


                                <a href="zhidaoxiangmu_detail.do?id=${map.id}">详情</a>


                                <c:choose>
                                    <c:when test="${'管理员' == sessionScope.cx }">

                                        <a href="zhidaoxiangmu_updt.do?id=${map.id}">编辑</a>
                                        <a href="zhidaoxiangmu_delete.do?id=${map.id}" onclick="return confirm('确定要删除？')">删除</a>
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
