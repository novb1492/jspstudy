<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
String cm=request.getParameter("cm");//requset 파라미터는 string !! 20210426
String kg=request.getParameter("kg");
double cm2=Double.parseDouble(cm);
double kg2=Double.parseDouble(kg);
double bmi=kg2/(cm2/100*cm2/100);


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>체질량 지수 계산</h1>
<p>
신장 :<%=cm2 %><br>
몸무게 :<%=kg2 %><br>
bmi 지수 :<%=bmi %><br>
</p>
</body>
</html>