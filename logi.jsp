<%@ page import="java.sql.*" %>
<%
String uname=request.getParameter("uname");
String psw=request.getParameter("psw");


try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/portal","root","12345");
	Statement st=con.createStatement();
	st.executeUpdate("insert into login(uname,psw) values('"+uname+"','"+psw+"')");
	response.sendRedirect("apply.html");
	
	
}
catch(Exception e)
{
	response.sendRedirect("error.html");
}
%>