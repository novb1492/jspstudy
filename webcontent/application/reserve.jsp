<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    ArrayList<String>array=new ArrayList<>();
    if(session.getAttribute("authpass")==null)
    {
    	response.sendRedirect("concert.jsp");
    }
    if(application.getAttribute("completelist")!=null)
    {
     array=(ArrayList<String>)application.getAttribute("completelist");
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
선택후 예약버튼
</div>
<hr/>
<form action="reserveprocess.jsp">	
	<p align="center">
		<strong>좌석배치도</strong>
		<br/>&nbsp;&nbsp;&nbsp;&nbsp;
				<%for(char c='A';c<='Z';c++)
				{%>
					<small><%=c %></small>&nbsp;&nbsp;
				<%}%><br/>
				<%
				for(int r=1;r<=3;r++)
				{%>
				<%=r %>
				<% for(char c='A';c<='Z';c++)
				{%>
				<%if (array.contains(c+"-"+r))
					{%>
				<input type="checkbox"name="seat"value="<%=c%>-<%=r%>" disabled>
				<%}
				else
				{%>
					<input type="checkbox"name="seat"value="<%=c%>-<%=r%>" >
				<%}%>
				<%}%><br/>
				
				<%}%><br/>
				<%
				for(int r=4;r<=6;r++)
				{%>
				<%=r %>
				<% for(char c='A';c<='Z';c++)
				{%>
				<input type="checkbox"name="seat"value="<%=c%>-<%=r%>">
				<%}%><br/>
				<%}%><br/>
				<input type="submit"value="예약">
				<input type="reset" value="재설정">
				
	</p>
</form>

</body>
</html>