<%@page import="kr.co.home.userbean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


  <jsp:useBean id="user" class="kr.co.home.userbean" scope="request"></jsp:useBean>
<jsp:getProperty name="user" property="id" />
<jsp:getProperty name="user" property="pwd" />
<jsp:getProperty name="user" property="name" />
<jsp:getProperty name="user" property="email" />
<%//<%=user.getId() --%>
<%--<%=user.getPwd() --%>
<%--<%=user.getName() --%>
<%--<%=user.getEmail() --%>
<%-- <%=request.getAttribute("id") %>
<%=request.getAttribute("pwd") %>
<%=request.getAttribute("name") %>
<%=request.getAttribute("email") %> --%>
</body>
</html>