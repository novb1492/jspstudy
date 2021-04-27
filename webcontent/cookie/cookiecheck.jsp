<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    Cookie[] cookies= request.getCookies();//////받을때는 리퀘스트
   boolean flag=false;
    
for(Cookie c:cookies)
{
	String name=c.getName();
	if(name.equals("a"))
	{
		out.println("a가있습니다");
		String value= c.getValue();
		flag=true;
		break;
	}
}
if(!flag)
{
	out.println("a사라짐");
}
%>
<a href="allcookit.jsp">모든쿠키보기</a>