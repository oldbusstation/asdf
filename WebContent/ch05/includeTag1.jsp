<!--  includeTag1.jsp -->
<%@ page contentType="text/html; charset=EUC-KR" %>
<%
	request.setCharacterEncoding("EUC-KR");
	/* String name = request.getParameter("name"); */
%>
<%-- �̸� : <%=name%> --%>
<!--  ��û���� request�� ���� include �������� �Ѿ��. �׼��±׸� ���� �׷��Եȴ�-->
<jsp:include page="includeTag2.jsp"/>
