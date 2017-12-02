<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册</title>
    
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
    <form action="two.do" method="post">
    	姓名 <input type="text" name="name"/><br/><br/>
    	年龄 <input type="text" name="age"/><br/><br/>
    	住址 <input type="text" name="addrs"/><br/><br/>
    	文凭 <input type="text" name="diploma"/><br/><br/>
    	 <input type="button" value="提交" id="tijiao"/>
    </form>
    <script type="text/javascript">
    	var upload = document.getElementById("tijiao");
    	tijiao.onclick = function (){
    		alert("注册成功");
    		upload.form.submit();
    	}
    </script>
  </body>
</html>
