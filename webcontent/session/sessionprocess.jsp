<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id=(String)session.getAttribute("id");
String[] hobby=(String[])session.getAttribute("hobby");
out.println(id);
out.println(Arrays.toString(hobby));
session.invalidate();/////////////////////php보다불편하고 별로다 20210427
if(request.isRequestedSessionIdValid())
{
	out.println("유요함");
}
else
{
	out.println("없음");
}
%>