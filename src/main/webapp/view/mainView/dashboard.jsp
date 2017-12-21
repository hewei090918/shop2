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
	            text: 'Browser market shares at a specific website, 2014'
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
	                ['Firefox', 45.0],
	                ['IE', 26.8],
	                {
	                    name: 'Chrome',
	                    y: 12.8,
	                    sliced: true,
	                    selected: true
	                },
	                ['Safari', 8.5],
	                ['Opera', 6.2],
	                ['Others', 0.7]
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
	            text: '3D chart with null values'
	        },
	        subtitle: {
	            text: 'Notice the difference between a 0 value and a null point'
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
	            name: 'Sales',
	            data: [2, 3, null, 4, 0, 5, 1, 4, 6, 3]
	        }]
	    });
    </script>
  </body>
</html>
