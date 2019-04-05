<!-- directive5.jsp -->
<%@ page contentType="text/html; charset=EUC-KR" %>
<%
	String sessionID =session.getId(); //처음 접속될때 세션의 id를 변수에 저장해둔다	
%>
세션 id : <%=sessionID %>