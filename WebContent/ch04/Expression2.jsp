<!-- expression2.jsp -->
<%@ page contentType="text/html; charset=EUC-KR" %>
<%//////////////////////////Field ����/////////////////////////////////////// %>
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

<h5>������ �����ϱ�� �����ϱ��? >> <%=(hour<12)?"����":"����" %></h5>
<br>
<h5>one�� two ���߿� ū ���ڴ�?  >>  <%=max(one,two) %></h5>