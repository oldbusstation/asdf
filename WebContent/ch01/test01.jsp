<%@page import="java.util.Date"%> <!-- 자동으로 import된 java.util -->
<%@ page contentType="text/html; charset=EUC-KR" %>
<%//자바 스크립트 작업
	Date d = new Date(); //데이트 메소드 사용
%>
<html>

<body>
<%=d.toLocaleString() %>
</body>
</html>