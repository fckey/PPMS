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
        资产消耗详情
    </div>
    <div class="panel-body">

        <div class="admin-detail clearfix">
                            <div class="detail detail-readmodule">
                <div class="detail-title">
                    园区资产id：
                </div>
                <div class="detail-content">
                    ${map.yuanquzichanid}
                </div>
            </div>                            <div class="detail detail-text">
                <div class="detail-title">
                    资产编号：
                </div>
                <div class="detail-content">
                    ${map.zichanbianhao}
                </div>
            </div><div class="detail detail-text">
                <div class="detail-title">
                    资产类型：
                </div>
                <div class="detail-content">
                    ${map.zichanleixing}
                </div>
            </div>                            <div class="detail detail-longtext">
                <div class="detail-title">
                    资产名称：
                </div>
                <div class="detail-content">
                    ${map.zichanmingcheng}
                </div>
            </div>                            <div class="detail detail-select">
                <div class="detail-title">
                    项目：
                </div>
                <div class="detail-content">
                    ${map.xiangmu}
                </div>
            </div>                            <div class="detail detail-number">
                <div class="detail-title">
                    消耗数量：
                </div>
                <div class="detail-content">
                    ${map.xiaohaoshuliang}
                </div>
            </div>                            <div class="detail detail-textarea">
                <div class="detail-title">
                    备注：
                </div>
                <div class="detail-content">
                    ${map.beizhu}
                </div>
            </div>                            <div class="detail detail-textuser">
                <div class="detail-title">
                    操作人：
                </div>
                <div class="detail-content">
                    ${map.caozuoren}
                </div>
            </div>            
                                                                    </div>

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
