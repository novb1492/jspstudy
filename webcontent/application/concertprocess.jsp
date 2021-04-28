<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
String code=request.getParameter("code");//사용자입력
String a=(String)session.getAttribute("authcode");
if(code.equals(a))
{
	session.setAttribute("authcode", true);
	response.sendRedirect("concertreserve.jsp");
}
else
{
	out.println("틀렸습니다");
	
}
%>