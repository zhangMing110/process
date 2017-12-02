<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>个人信息展示</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/themes/icon.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.easyui.min.js"></script>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <table  class="easyui-datagrid"  style="width:700px;height:250px"   title="学生数据"
         	data-options="singleSelect:true,collapsible:true,url:'/springMVC_mybatis/query.do',method:'post'">
         	<thead>
         	   <tr>
         	     <th data-options="field:'name',width:80">
         	                  姓名
         	     </th>
         	     <th data-options="field:'age',width:80">
         	                  年龄
         	     </th>
         	     <th data-options="field:'addrs',width:80">
         	                  住址
         	     </th>
         	     <th data-options="field:'diploma',width:80">
         	                  文凭
         	     </th>
         	   </tr>
         	</thead>
      </table>
    
  </body>
</html>
