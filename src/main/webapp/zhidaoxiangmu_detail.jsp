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
        指导项目详情
    </div>
    <div class="panel-body">

        <div class="admin-detail clearfix">
                            <div class="detail detail-readmodule">
                <div class="detail-title">
                    专家id：
                </div>
                <div class="detail-content">
                    ${map.zhuanjiaid}
                </div>
            </div>                            <div class="detail detail-text">
                <div class="detail-title">
                    专家编号：
                </div>
                <div class="detail-content">
                    ${map.zhuanjiabianhao}
                </div>
            </div><div class="detail detail-text">
                <div class="detail-title">
                    专家姓名：
                </div>
                <div class="detail-content">
                    ${map.zhuanjiaxingming}
                </div>
            </div>                            <div class="detail detail-checkbox">
                <div class="detail-title">
                    指导项目：
                </div>
                <div class="detail-content">
                    ${map.zhidaoxiangmu}
                </div>
            </div>                            <div class="detail detail-textarea">
                <div class="detail-title">
                    备注：
                </div>
                <div class="detail-content">
                    ${map.beizhu}
                </div>
            </div>                            <div class="detail detail-autotime">
                <div class="detail-title">
                    添加时间：
                </div>
                <div class="detail-content">
                    ${map.addtime}
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
