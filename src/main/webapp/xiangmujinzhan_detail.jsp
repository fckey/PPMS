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
        项目进展详情
    </div>
    <div class="panel-body">

        <div class="admin-detail clearfix">
                            <div class="detail detail-readmodule">
                <div class="detail-title">
                    项目信息id：
                </div>
                <div class="detail-content">
                    ${map.xiangmuxinxiid}
                </div>
            </div>                            <div class="detail detail-text">
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
            </div>                            <div class="detail detail-date">
                <div class="detail-title">
                    日期：
                </div>
                <div class="detail-content">
                    ${map.riqi}
                </div>
            </div>                            <div class="detail detail-select">
                <div class="detail-title">
                    是否已完成：
                </div>
                <div class="detail-content">
                    ${map.shifouyiwancheng}
                </div>
            </div>                                                        <div class="detail detail-textuser">
                <div class="detail-title">
                    操作人：
                </div>
                <div class="detail-content">
                    ${map.caozuoren}
                </div>
            </div>            
                                                            <div class="detail detail-editor">
                <div class="detail-title">
                    进展内容：
                </div>
                <div class="detail-content">
                    ${map.jinzhanneirong}
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
