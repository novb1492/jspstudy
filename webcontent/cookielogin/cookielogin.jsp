<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    Cookie[] coo=request.getCookies();
    boolean i= false;
    if(coo!=null)
    {
    	for(Cookie c: coo)
    	{
    		if(c.getName().equals("idcookie"))
    		{
    		i=true;
    		}
    	}
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% if(i==false){%>
<form action="loginprocess.jsp" method="post">
<input type="text" name="id"placeholder="id">
<input type="checkbox" name="idremember"placeholder="yes">
<small>아이디 기억하기</small>
<input type="password" name="pwd"placeholder="pwd">
<br>
<input type="submit" value="로그인">
<% }
else
{
	out.println("환영");
}
%>
</form>
</body>
</html>