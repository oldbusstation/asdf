<!--  includeTag5.jsp -->
<%@ page contentType="text/html; charset=EUC-KR" %>
<%
	request.setCharacterEncoding("EUC-KR");
	String bloodType = request.getParameter("bloodType");
	String name = "강호동";
%>
혈액형으로 보는 나의 성격은?<hr color="red" width="50%" align="left"/>
<jsp:include page='<%=bloodType+".jsp" %>'>
	<jsp:param value="<%=name %>" name="name"/>	
</jsp:include>