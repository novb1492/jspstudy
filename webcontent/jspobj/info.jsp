<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
StringBuffer r1=request.getRequestURL();
String r2=request.getRequestURI();
String conpath=request.getContextPath();
int port=request.getServerPort();
String ip=request.getRemoteAddr();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>
요청 url: <%=r1 %><br>
요청 url: <%=r2 %><br>
요청 port: <%= port %><br>
요청 ip: <%=ip %><br>
</p>
</body>
</html>