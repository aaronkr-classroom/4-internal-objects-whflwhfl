<!--  0505_response.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% response.sendRedirect("https://yes24.com"); %> <!--  301코드 -->
<%
	response.setHeader("Cache-control", "use_cache");
	response.addHeader("contentType", "text/html; charset=utf-8");
	response.setDateHeader("date", 1L);
	
	response.setIntHeader("Refresh", 5);
	
	response.setCharacterEncoding("utf-8");
%>

<%out.println("<h1>" + "Response Example<h/1>"); %>
<pre>
	Cache-control: <%= response.getHeader("Cache-control") %>
	contentType: <%= response.getHeader("contentType") %>
	date: <% out.println(response.getHeader("date")); %>
	Character Encoding: <%= response.getCharacterEncoding() %>
	
	<%= new java.util.Date() %>
</pre>

<% //response.sendError(404, "요청 페이지를 찾을 수 없습니다."); %>
<%//response.sendError(505, "내장 서버 오류를 발생했습니다."); %>


</body>

</html>