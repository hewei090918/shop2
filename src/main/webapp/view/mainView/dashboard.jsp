<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>超市货物管理平台-主面板</title>

  </head>
  
  <body>
    <div class="panel panel-default">
    	<div class="panel-body">
    		<div id="pie_container" style="height: 340px"></div>
    	</div>
    	<div class="panel-body">
    		<div id="column_container" style="height: 340px"></div>
    	</div>
    </div>
    <script type="text/javascript">
	    Highcharts.chart('pie_container', {
	        chart: {
	            type: 'pie',
	            options3d: {
	                enabled: true,
	                alpha: 45,
	                beta: 0
	            }
	        },
	        title: {
	            text: '商品库存数量对比'
	        },
	        tooltip: {
	            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
	        },
	        plotOptions: {
	            pie: {
	                allowPointSelect: true,
	                cursor: 'pointer',
	                depth: 35,
	                dataLabels: {
	                    enabled: true,
	                    format: '{point.name}'
	                }
	            }
	        },
	        series: [{
	            type: 'pie',
	            name: 'Browser share',
	            data: [
	                ['食品饮料类', 45.0],
	                ['家电类', 26.8],
	                {
	                    name: '日用品类',
	                    y: 12.8,
	                    sliced: true,
	                    selected: true
	                },
	                ['运动器材类', 8.5],
	                ['文具类', 6.2],
	                ['其它', 0.7]
	            ]
	        }]
	    });
	    
	    Highcharts.chart('column_container', {
	        chart: {
	            type: 'column',
	            options3d: {
	                enabled: true,
	                alpha: 10,
	                beta: 25,
	                depth: 70
	            }
	        },
	        title: {
	            text: '商品销售营业额统计'
	        },
	        subtitle: {
	            text: '2017年月度销售情况展示'
	        },
	        plotOptions: {
	            column: {
	                depth: 25
	            }
	        },
	        xAxis: {
	            categories: Highcharts.getOptions().lang.shortMonths,
	            labels: {
	                skew3d: true,
	                style: {
	                    fontSize: '16px'
	                }
	            }
	        },
	        yAxis: {
	            title: {
	                text: null
	            }
	        },
	        series: [{
	            name: '营业额（万元）',
	            data: [2, 3, null, 4, 0, 5, 1, 4, 6, 3]
	        }]
	    });
    </script>
  </body>
</html>
