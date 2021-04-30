<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ page import="kr.co.score.scorebean" %>  
  
  <jsp:useBean id="score" class="kr.co.score.scorebean" scope="request"></jsp:useBean>
  <jsp:setProperty name="score" property="*"/>
  <%
  int total=score.getKok()+score.getMath()+score.getEnglish();
  double avg=total/3;
  %>
  <jsp:setProperty property="total" name="score" value="<%=total %>"/>
  <jsp:setProperty property="avg" name="score"value="<%=avg %>"/>
<jsp:forward page="scoreuse.jsp"></jsp:forward>