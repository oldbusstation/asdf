<!-- expression.jsp -->
<%@ page contentType="text/html; charset=EUC-KR" %>
<%!//ǥ������ ���ؼ� ���𹮿��� �迭�� ���ش�.
//������ ��Ģ : �迭 �ؿ��� �׻� for���� ���� �׻� �����ϴ�
	String study[] = {"Java","JSP","Servlet","Android"};
%>
<table border="1""width="200">
	<tr>
		<th>��ȣ</th>
		<th>����</th>
	</tr>
	<%
		for(int i =0;i<study.length;i++){
	%>
		<tr>
			<td><%=i+1 %></td>
			<td><%=study[i] %></td>
		</tr>
	<%
		}
	%>
</table>
<hr><!-- �ٸ�������� for���� �������� //���尴ü�� ��� -->
<table border="1""width="200">
	<tr>
		<th>��ȣ</th>
		<th>����</th>
	</tr>
	<%
		for(int i =0;i<study.length;i++){
			out.println("<tr>");
			out.println("<td>"+(i+1)+"</td>");
			out.println("<td>"+study[i]+"</td>");
			out.println("</tr>");
		
		}//--for
	%>
</table>