<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
 Cookie[] all= request.getCookies();
for(Cookie c: all)
{
	String n=c.getName();
	String v=c.getValue();
	out.println(n+":"+v+"<br>");
	
}
%>  
