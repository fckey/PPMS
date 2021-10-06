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
        项目信息详情
    </div>
    <div class="panel-body">

        <div class="admin-detail clearfix">
                            <div class="detail detail-text">
                <div class="detail-title">
                    项目编号：
                </div>
                <div class="detail-content">
                    ${map.xiangmubianhao}
                </div>
            </div><div class="detail detail-text">
                <div class="detail-title">
                    项目类型：
                </div>
                <div class="detail-content">
                    ${map.xiangmuleixing}
                </div>
            </div>                            <div class="detail detail-longtext">
                <div class="detail-title">
                    项目名称：
                </div>
                <div class="detail-content">
                    ${map.xiangmumingcheng}
                </div>
            </div>                            <div class="detail detail-file">
                <div class="detail-title">
                    项目文档：
                </div>
                <div class="detail-content">
                    <c:choose>
<c:when test="${map.xiangmuwendang == '' }">
无文件</c:when><c:otherwise><a href="${map.xiangmuwendang}" target="_blank">下载</a></c:otherwise></c:choose>
                </div>
            </div>                                                        <div class="detail detail-textuser">
                <div class="detail-title">
                    添加人：
                </div>
                <div class="detail-content">
                    ${map.tianjiaren}
                </div>
            </div>                            <div class="detail detail-select">
                <div class="detail-title">
                    项目进展：
                </div>
                <div class="detail-content">
                    ${map.xiangmujinzhan}
                </div>
            </div>                            <div class="detail detail-autotime">
                <div class="detail-title">
                    添加时间：
                </div>
                <div class="detail-content">
                    ${map.addtime}
                </div>
            </div>            
                                                            <div class="detail detail-editor">
                <div class="detail-title">
                    项目简介：
                </div>
                <div class="detail-content">
                    ${map.xiangmujianjie}
                </div>
            </div>        </div>

        <div class="button-list mt10">
            <div class="">
                <button type="button" class="btn btn-default" onclick="history.go(-1);">
    返回
                
</button>
                <button type="button" class="btn btn-default" onclick="window.print()">
    打印本页
                
</button>
            </div>
        </div>

    </div>
</div>







</div>
<%@ include file="foot.jsp" %>
