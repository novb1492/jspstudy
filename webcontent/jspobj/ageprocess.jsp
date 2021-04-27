<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String age=request.getParameter("age");
    	int intage=Integer.parseInt(age);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%if(intage>=20)
	{
		response.sendRedirect("20over.jsp");
	}
else
{
	response.sendRedirect("20under.jsp");
	}
	%>
</body>
</html>