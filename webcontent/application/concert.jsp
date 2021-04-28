<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*"%>
    <%
    UUID uuid=UUID.randomUUID();////신기한놈 발견 인증문자 생선기 20210428
    //System.out.println(uuid);
    String [] uuids=uuid.toString().split("-");
    System.out.println(Arrays.toString(uuids));
    System.out.println(uuids[1]);
    session.setAttribute("authcode", uuids[1]);
   
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
인증문자:<%=uuids[1] %>
<form action="concertprocess.jsp">
	<input type="text"name="code"size="5">
	<input type="submit">
</form>
</body>
</html>