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
	request.setCharacterEncoding("EUC-KR");//요청된 문자를 한글로 받아낸다
	
	//msg와 number는 form에 name값과 반드시 일치해야한다(대소문자 구분됨)
	String msg =request.getParameter("msg");
	//통신을 통해서 들어오는 값은 모두 문자열이다. 우리가 사용해야하는 number의
	//값은 int로 바꿔야한다.
	int number = Integer.parseInt(request.getParameter("number"));
	
	int cnt = 0;
	while(number>cnt){
		cnt++;
%>
	<h3><font color ="<%=randomColor()%>"><%=msg%></font></h3>
<%
	}
%>