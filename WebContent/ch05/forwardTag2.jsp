<!-- forwardTag2.jsp -->
<%@ page contentType="text/html; charset=EUC-KR" %>
<%
	request.setCharacterEncoding("EUC-KR");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
%>
forward �Ǳ� �Ŀ� ������ �Դϴ�.
id/pwd : <%= id+"/"+pwd %>