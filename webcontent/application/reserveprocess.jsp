

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
<div align="center">
	<h2>예매 결과</h2>
	<p>
	선택한좌석<br>
	<%for(String s:seat)
		{
		out.println("<b>["+s+"]</b>");
		}		
		%>
		<br>가 예매가 신청되었습니다.
	</p>
	<p>
	예매 신청결과<%=(count==seat.length)?"성공":"실패" %>
	<%if(count!=seat.length)
		{
		%>예매 할 좌석이 이미 선점 되었습니다.<br>
		<%}%>
			<a href="concert.jsp">다시예매하기</a>
	</p>
</div>
</body>
</html>