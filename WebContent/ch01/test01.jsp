<%@page import="java.util.Date"%> <!-- �ڵ����� import�� java.util -->
<%@ page contentType="text/html; charset=EUC-KR" %>
<%//�ڹ� ��ũ��Ʈ �۾�
	Date d = new Date(); //����Ʈ �޼ҵ� ���
%>
<html>

<body>
<%=d.toLocaleString() %>
</body>
</html>