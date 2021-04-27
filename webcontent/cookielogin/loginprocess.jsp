<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    request.setCharacterEncoding("utf-8");
    String id=request.getParameter("id");
    String pwd=request.getParameter("pwd");
    String check=request.getParameter("idremember");
    if(id.equals("kim")&&pwd.equals("1111"))
    {
    	Cookie c= new Cookie("idcookie",id);
    	c.setMaxAge(30);
    	
    	response.addCookie(c);
    	if(check!=null)
    	{
    		Cookie idmemory=new Cookie("rememberid",id);
    		idmemory.setMaxAge(15);
    		response.addCookie(idmemory);
    	}
      	response.sendRedirect("welcome.jsp");
    }
    else
    {
      	response.sendRedirect("cookielogin.jsp");
    
    }
    %>
