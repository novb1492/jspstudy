<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isErrorPage="true" %><!-- exception 쓰는법 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
죄송합니다 <!-- 긴코든라고 치자 -->
에러원인 :<%=exception.getMessage() %>
</body>
</html>