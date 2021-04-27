<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	Cookie apple=new Cookie("apple","사과맛");//stinrg stinrg
    	Cookie a=new Cookie("a","a맛");
    	apple.setMaxAge(60*60);///이게 쿠키의 유효시간 ex)은행 로그인이나 자동로그아웃
		a.setMaxAge(20);////20초   
		response.addCookie(apple);////근데 어차피 세션공부했느데 쿠기잘안쓰인다고 하던데 요즘 20210427
		response.addCookie(a);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="cookiecheck.jsp">쿠키확인하기</a>
</body>
</html>