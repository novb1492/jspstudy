<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
String code=request.getParameter("code");//사용자입력
String a=(String)session.getAttribute("authcode");
out.println(code);
if(code.equals(a))
{
	session.setAttribute("authpass", true);
	response.sendRedirect("reserve.jsp");
}
else
{
	out.println("틀렸습니다");
	
}
%>