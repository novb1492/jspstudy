<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String bf=request.getParameter("bf");
String lunch=request.getParameter("lunch");
String dinner=request.getParameter("dinner");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>오늘의 메뉴는?</h1>
아침밥 :<%=bf %> <br>
점심밥 : <%=lunch %><br>
저녁밥 : <%= dinner %><br>
</body>
</html>