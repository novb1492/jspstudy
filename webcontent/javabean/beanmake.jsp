<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ page import="kr.co.home.userbean" %>  
  <jsp:useBean id="user" class="kr.co.home.userbean" scope="request"></jsp:useBean>
  <jsp:setProperty name="user" property="*"/>
  <%--한줄로 처리되는거 실화냐????/ 단클래스 이름/변수이름 다 똑같이 잘확인--%>
  <%--<%String id=request.getParameter("id");
  String pwd=request.getParameter("pwd");
  String name=request.getParameter("name");
  String email=request.getParameter("email");
  %>
 
  <jsp:setProperty name="user"  property="id" value="<%=id %>"/>
   <jsp:setProperty name="user"  property="pwd" value="<%=pwd %>"/>
    <jsp:setProperty name="user"  property="name" value="<%=name %>"/>
     <jsp:setProperty name="user"  property="email" value="<%=email %>"/>
     <%--html과 통일감이 생겨서 너무 좋다  그냥 생자바를 떄려박아서 쓰면되나 했는데 액션태그 너무 좋다 20210430--%>
<% 

//user.setId(request.getParameter("id"));
//user.setPwd(request.getParameter("pwd"));
//user.setName(request.getParameter("name"));
//user.setEmail(request.getParameter("email"));

//String id=request.getParameter("id");
//String pwd=request.getParameter("pwd");
//String name=request.getParameter("name");
//String email=request.getParameter("email");구식방법

//userbean user =new userbean(id,pwd,name,email);
//request.setAttribute("user", user);
/*request.setAttribute("id", id);
request.setAttribute("pwd", pwd);
request.setAttribute("name", name);
request.setAttribute("email", email);*/


%>
<jsp:forward page="beanuse.jsp"></jsp:forward>