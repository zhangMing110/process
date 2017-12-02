<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>tree</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/themes/demo.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.easyui.min.js"></script>
  </head>
  
  <body>
   	<h2>用户管理系统</h2>
	<p>请在下方管理您的系统</p>
	<div style="margin:20px 0;">
		<a href="index.jsp" class="easyui-linkbutton" onclick="collapseAll()">查看</a>
		<a href="show.jsp" class="easyui-linkbutton" onclick="expandAll()">管理用户</a>
		<a href="insert.jsp" class="easyui-linkbutton" onclick="expandTo()">注册用户</a>
		<a href="selectAll.jsp" class="easyui-linkbutton" onclick="getSelected()">查询</a>
	</div>
	<div class="easyui-panel" style="padding:5px">
		<ul id="tt" class="easyui-tree" data-options="url:'/jquery-easyui-1.5.3/demo/tree/aaa.txt',method:'get',animate:true"></ul>
	</div>
	<script type="text/javascript">
		function collapseAll(){
			$('#tt').tree('collapseAll');
		}
		function expandAll(){
			$('#tt').tree('expandAll');
		}
		function expandTo(){
			var node = $('#tt').tree('find',113);
			$('#tt').tree('expandTo', node.target).tree('select', node.target);
		}
		function getSelected(){
			var node = $('#tt').tree('getSelected');
			if (node){
				var s = node.text;
				if (node.attributes){
					s += ","+node.attributes.p1+","+node.attributes.p2;
				}
				alert(s);
			}
		}
	</script>

  </body>
</html>
