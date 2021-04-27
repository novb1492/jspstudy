<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%session.setAttribute("id", "kim");
    session.setAttribute("hobby", new String[]{"축구","배구"});
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="sessionprocess.jsp">세션가자</a>
</body>
</html>