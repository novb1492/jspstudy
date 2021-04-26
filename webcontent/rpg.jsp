
<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%! ArrayList<String>arr=new ArrayList<>();
 public int job()
 {
	 Random ra=new Random();
	int aaa=ra.nextInt(4);
	 return aaa;
 }

%>
<%
String[] jobs={"전사","도적","사냥꾼","마법사","사제"};
int aa=job();
int same=0;
arr.add(jobs[aa]);
if(arr.size()<10)
{
	same=0;
	for(int i=0;i<arr.size();i++)
	{
		if(arr.get(i)==jobs[aa])
		{
			same++;
		}
	}
	
}
%>
<%=arr.size() %>
<h1>당신의 역할</h1>
<p>
당신에게 부여된 역할은[<%=jobs[aa] %>]입니다<br>
현재 파티에 당신과 같은 역할을 가진플레이어는 <%=same %>입니다.
</p>
<p>
현재 파티구성<br>
[<%for(int i=0;i<arr.size();i++)
	{%>
	<%=arr.get(i) %>,
	<%}

%>]<%=arr.size() %>명참가중
</p>
<% if(arr.size()==10)
	{arr.clear();}
	%>
</body>
</html>