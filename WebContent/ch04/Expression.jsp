<!-- expression.jsp -->
<%@ page contentType="text/html; charset=EUC-KR" %>
<%!//표현식을 위해서 선언문에서 배열을 해준다.
//무조건 법칙 : 배열 밑에는 항상 for문이 거의 항상 존재하다
	String study[] = {"Java","JSP","Servlet","Android"};
%>
<table border="1""width="200">
	<tr>
		<th>번호</th>
		<th>과목</th>
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
<hr><!-- 다른방식으로 for문을 돌려보기 //내장객체의 사용 -->
<table border="1""width="200">
	<tr>
		<th>번호</th>
		<th>과목</th>
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