<!-- includeTag2.jsp -->
<%@ page contentType="text/html; charset=EUC-KR" %>
<%
	request.setCharacterEncoding("EUC-KR");
	String name = request.getParameter("name");
%>
include ActionTag ют╢о╢ы.<p/>
<%=name %>
<hr color = "red" width="300" align="left"/>