<!-- expression2.jsp -->
<%@ page contentType="text/html; charset=EUC-KR" %>
<%//////////////////////////Field 선언문/////////////////////////////////////// %>
<%!
	//int a = Math.max(a,b)
	public int max(int a, int b) {
	    return (a >= b) ? a : b;
	}
%>
<%////////////////////////////////////////////////////////////////////////////////////// %>
<% 
	java.util.Date d =new java.util.Date();
	int hour = d.getHours();
	int one = 10;
	int two = 12;
%>

<h5>지금은 오전일까요 오후일까요? >> <%=(hour<12)?"오전":"오후" %></h5>
<br>
<h5>one과 two 둘중에 큰 숫자는?  >>  <%=max(one,two) %></h5>