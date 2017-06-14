<%@page import="com.wjs.demo.vo.UserVo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>首页页面</h1>
<br>
<span>查询出的用户数据有：</span>
<br>
<table  border="2" width="600">
	<thead>
		<tr>
			<td>编号</td>
			<td>名称</td>
			<td>年龄</td>
		</tr>
	</thead>
	<tbody>
		<% List<UserVo> users = (List<UserVo>)request.getAttribute("users");
			for(int i = 0 ; i < users.size() ; i++){
				UserVo user = users.get(i);
				%>
				<tr>
					<td><%=user.getId() %></td>
					<td><%=user.getName() %></td>
					<td><%=user.getAge() %></td>
				</tr>
				<%
			}
		%>
	</tbody>
</table>
</body>
</html>