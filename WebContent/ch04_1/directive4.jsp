<!-- directive4.jsp -->
<%@ page contentType="text/html; charset=EUC-KR" %>
<%@page trimDirectiveWhitespaces="true" %>
<%@page session="true"%>
<%@page buffer="16kb"%>
<%@page autoFlush="true"%>
<%@page isThreadSafe="true"%>
<%@ page import="java.util.*" %>
<%
	Date d = new Date();
%>

<%=d.toLocaleString() %>