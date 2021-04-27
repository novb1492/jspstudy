<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    Cookie[] coo=request.getCookies();
    String n=null;
    for(Cookie c :coo)
    {
    	if(c.getName().equals("idcookie"))
    	{
    		n=c.getValue();
    		break;
    	}
    }
    if(n!=null)
    {
    	out.println(n+"환영합니다");
     	out.println("<a href='cookielogin.jsp'>다시로그인하기</a>");
    }
    else
    {
    	out.println("<a href='cookielogin.jsp'>다시로그인하기</a>");
    }
    %>