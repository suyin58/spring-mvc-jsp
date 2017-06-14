<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>登录界面</h1>
<br/>
<form action="<%=request.getAttribute("basePath") %>/logon/login">

	<label>用户名称</label><input type="text" name="userName" />
	<button type="submit"  >提交</button>
	<br/>
	<label style="color:red"><%=request.getAttribute("msg") %></label>
</form>
</body>
</html>