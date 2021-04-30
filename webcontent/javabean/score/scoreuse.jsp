<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <jsp:useBean id="score" class="kr.co.score.scorebean" scope="request"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:getProperty name="score" property="kok" />
<jsp:getProperty name="score" property="math" />
<jsp:getProperty name="score" property="english" />
<jsp:getProperty name="score" property="total" />
<jsp:getProperty name="score" property="avg" />
</body>
</html>