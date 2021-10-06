<%@ page language="java" pageEncoding="utf-8" %>
<%@ page import="util.Request" %>
<%@ page import="dao.Query" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/style.css">
    <script src="js/datepicker/WdatePicker.js"></script>

    <script src="js/highcharts/highcharts.js"></script>
    <script src="js/highcharts/modules/exporting.js"></script>
    <script src="js/highcharts/modules/series-label.js"></script>
    <script src="js/highcharts/modules/oldie.js"></script>

    <title>基于云计算的创业园管理系统设计与开发</title>
    <LINK href="images/style.css" type=text/css rel=stylesheet>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <style type="text/css">
        <!--
        body, td, th {
            font-size: 12px;
        }

        -->
    </style>
</head>



<body>

<form action="?" method="get">
    开始日期:<input sype="text" name="kaishiriqi" value="<%=Request.get("kaishiriqi")%>" onclick="WdatePicker({dateFmt:'yyyy-MM-dd',lang:'zh-cn'})">
    结束日期:<input sype="text" name="jieshuriqi" value="<%=Request.get("jieshuriqi")%>" onclick="WdatePicker({dateFmt:'yyyy-MM-dd',lang:'zh-cn'})">
    <button type="submit">提交</button>
</form>




<%
    //if (Request.get("kaishiriqi").equals("") && !Request.get("jieshuriqi").equals("")){
%>

<%
    String where = "1=1 ";
    if (!Request.get("kaishiriqi").equals("")) {
        where += " and addtime>='"+Request.get("kaishiriqi")+" 00:00:00' ";
    }
    if (!Request.get("jieshuriqi").equals("")) {
        where += " and addtime<='"+Request.get("jieshuriqi")+" 23:59:59' ";
    }
    List<HashMap> list = Query.make("zichanfenpei").field("zichanmingcheng ,fenpeidaoxiangmu,  COUNT(*) count , SUM(peifenshuliang) peifenshuliang ")
            .where(where)
            .group("zichanmingcheng,fenpeidaoxiangmu")
            .order("SUM(peifenshuliang) desc")
            .select();
%>


<table class="table">
    <thead>
    <tr>
        <th>资产名称</th>
        <th>项目名称</th>
        <th>分配数量</th>
        <th>分配次数</th>

    </tr>
    </thead>
    <tbody>
    <%for (HashMap map:list)  {%>
    <tr>

        <td><%=map.get("zichanmingcheng")%></td>
        <td><%=map.get("fenpeidaoxiangmu")%></td>
        <td><%=map.get("peifenshuliang")%></td>
        <td><%=map.get("count")%></td>

    </tr>
    <% } %>
    </tbody>



</table>
<div id="container" style="max-width:800px;height:400px"></div>
<script>
    var chart = Highcharts.chart('container', {

        chart: {
            type: 'column'
        },

        title: {
            text: '资产分配分析'
        },
        subtitle: {
            text: ''
        },

        yAxis: {
            title: {
                text: '数量',
                align: 'high'
            },
            labels: {
                overflow: 'justify'
            }
        },
        tooltip: {
            valueSuffix: ' 数量'
        },
        xAxis:{
            title:{
                text:'资产'
            },

            categories:[
                <% for(HashMap map : list){ %>
                ' <%=map.get("zichanmingcheng")%>,(<%=map.get("fenpeidaoxiangmu")%>)',
                <% } %>

            ]

        },
        /*
        legend: {
            layout: 'vertical',
            align: 'right',
            verticalAlign: 'middle'
        },
        */
        plotOptions: {
            series: {
                label: {
                    connectorAllowed: false
                },
                // pointStart: 2010
            }
        },
        series: [{
            name: '分配数量',
            data: [
                <% for(HashMap map : list){ %>
                <%=map.get("peifenshuliang")%>,
                <% } %>
            ]
        }],
        responsive: {
            rules: [{
                condition: {
                    maxWidth: 500
                },
                chartOptions: {
                    legend: {
                        layout: 'horizontal',
                        align: 'center',
                        verticalAlign: 'bottom'
                    }
                }
            }]
        }
    });
</script>

<% //} %>
</body>
</BODY>
</html>


