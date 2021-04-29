<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8");%>
<jsp:forward page="param3.jsp">
<jsp:param  name="nick"value="bow"/><!-- 추가로 숨겨서 넣을수있다  input hide도 있다-->
</jsp:forward>