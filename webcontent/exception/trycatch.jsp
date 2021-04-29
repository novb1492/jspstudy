<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page errorPage="errorpage.jsp" %><!-- 1순위다 try catch 대신 쓰는 방법 아주 좋다  -->
    <%String id=request.getParameter("id"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<%=id.toUpperCase() %><!-- 브라우저에 따라 다르다 크롬이 좋다 -- 20210429-->


</body>
</html>