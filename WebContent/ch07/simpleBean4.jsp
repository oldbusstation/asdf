<!-- simpleBean4.jsp -->
<%@ page contentType="text/html; charset=EUC-KR" %>
<%	request.setCharacterEncoding("EUC-KR");%>
<!-- 1.빈즈 객체를 생성한다. -->
<jsp:useBean id="bean" class="ch07.SimpleBean2"/>
<!-- 2. 값을 받아서 빈즈에 저장한다. -->
<jsp:setProperty property="*" name="bean"/>
<!-- 3.getproperty를 사용하여 출력 -->
name2:<jsp:getProperty property="name" name="bean"/><br/>
age2:<jsp:getProperty property="age" name="bean"/><br/>
city2:<jsp:getProperty property="city" name="bean"/><br/>
name:<%=bean.getName() %><br/>
age:<%=bean.getAge() %><br/>
city:<%=bean.getCity() %>
