<!-- while.jsp -->
<%@ page import="java.util.Random" %>
<%@ page contentType="text/html; charset=EUC-KR" %>
<%!
		public String randomColor(){
			Random r = new Random();
			String rgb = Integer.toHexString(r.nextInt(256));
	 		rgb += Integer.toHexString(r.nextInt(256));
	 		rgb += Integer.toHexString(r.nextInt(256));
	 		return "#"+rgb;
		}
%>
<%
	request.setCharacterEncoding("EUC-KR");//��û�� ���ڸ� �ѱ۷� �޾Ƴ���
	
	//msg�� number�� form�� name���� �ݵ�� ��ġ�ؾ��Ѵ�(��ҹ��� ���е�)
	String msg =request.getParameter("msg");
	//����� ���ؼ� ������ ���� ��� ���ڿ��̴�. �츮�� ����ؾ��ϴ� number��
	//���� int�� �ٲ���Ѵ�.
	int number = Integer.parseInt(request.getParameter("number"));
	
	int cnt = 0;
	while(number>cnt){
		cnt++;
%>
	<h3><font color ="<%=randomColor()%>"><%=msg%></font></h3>
<%
	}
%>