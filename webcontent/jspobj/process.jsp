<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% 
    request.setCharacterEncoding("utf-8");
    String id=request.getParameter("id");
    String pwd=request.getParameter("pwd");
    String []hobby =request.getParameterValues("hobby");
  
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
id :<%=id %>
pwd :<%=pwd %>
hobby :<%=Arrays.toString(hobby) %>아주 유용하다 
</body>
</html>