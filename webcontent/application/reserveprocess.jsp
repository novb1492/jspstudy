
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% 
    String[] seat=request.getParameterValues("seat");
    
    ArrayList<String>array=new ArrayList<>();//////누르면 차는게아니라 결제까지 하면 여기에 들어온다
    
    if(application.getAttribute("completelist")!=null)
    {
    	array=(ArrayList<String>)application.getAttribute("completelist");
    }
    
    ArrayList<String>temp=new ArrayList<>();
    int count=0;
    for(String s:seat)
    {
    	if(array.contains(s))
    	{
    		break;
    	}
    	else
    	{
    		temp.add(s);
    		count++;
    	}
    }
    if(count==seat.length)
    {
    	array.addAll(temp);
    }
    application.setAttribute("completelist", array);
    %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>