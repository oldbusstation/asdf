<!-- directive3.jsp -->
<%@ page contentType="text/html; charset=EUC-KR"  pageEncoding="EUC-KR" %>
<%@ page errorPage ="error.jsp" %>
<%
	int one = 1;
	int zero = 0;
%>
<h1>Directive Example3</h1>
one과 zero의 사칙연산<p/>
one+zero=<%=one + zero%><p/>
one-zero=<%=one - zero%><p/>
one*zero=<%=one * zero%><p/>
one/zero=<%=one / zero%><p/><!-- 일부러 오류를 발생시킨 코드 -->