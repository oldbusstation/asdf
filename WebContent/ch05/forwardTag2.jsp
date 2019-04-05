<!-- forwardTag2.jsp -->
<%@ page contentType="text/html; charset=EUC-KR" %>
<%
	request.setCharacterEncoding("EUC-KR");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
%>
forward 되기 후에 페이지 입니다.
id/pwd : <%= id+"/"+pwd %>