<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ page import="kr.co.score.scorebean" %>  
  
  <jsp:useBean id="score" class="kr.co.score.scorebean" scope="request"></jsp:useBean>
  <jsp:setProperty name="score" property="*"/>
  <%
  int total=score.getKok()+score.getMath()+score.getEnglish();
  double avg=total/3;
  %>
<jsp:setProperty  name="score" property="total" value="<%=total %>"/>
<jsp:setProperty  name="score" property="avg" value="<%=avg %>"/><!-- 진짜 오타 조심하자 무슨 1시간째 이렇고 있냐20210430 -->
<jsp:forward page="scoreuse.jsp"></jsp:forward>