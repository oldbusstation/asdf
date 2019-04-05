<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page import="java.util.Random" %>
<%!
	public String randomColor(){
		Random r = new Random();
		String rgb = Integer.toHexString(r.nextInt(256));
		rgb += Integer.toHexString(r.nextInt(256));
		rgb += Integer.toHexString(r.nextInt(256));
		return "#"+rgb;
}
%>
<title>GuGuDan_KSM</title>
<body>
	<h1 style="text-align:center">GuGuDan</h1>
	<table border ="1" style ="text-align:center;margin-left:auto;margin-right:auto">
		<tr>
			<%
				for(int i=1;i<10;i++){
			%>
				<th style="text-align:center ;color:white" bgcolor="black"><%=i+"´Ü" %></th>
			<%
				}
			%>
		</tr>
			<%
				for(int i = 1;i<10;i++){	
			%>
				<tr>
			<%
					for(int j=1;j<10;j++){
			%>	
				<td><font color="<%=randomColor()%>"><%=i+"*"+j+"="+(i*j) %></font></td>
				<%
					}
				%>
				</tr>
			<%
				}
			%>
	</table>
</body>