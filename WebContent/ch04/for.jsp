<!-- for.jsp -->
<%@ page contentType="text/html; charset=EUC-KR" %>
1���� 10������ ����(�� ����)?<p/>
1.ǥ�������� ���<br>
<%
	int sum = 0;
	for(int i=1; i<=10;i++){
		if(i<10){	
%>
	<%=i + "+" %>
<%
	}else{
%>
	<%= i +"="%>
<%
	}//--if
	sum +=i;
	}//--for
%>
<%=sum%><p/>
2.out.println�� ����ؼ� ���<br/>
<%
	sum = 0;
	for(int i=1; i<=10;i++){
		if(i<10){
			out.println(i + "+");
		}
		else{
			out.println(i + "=");
		}
		sum += i;
	}
	out.println(sum);
%>