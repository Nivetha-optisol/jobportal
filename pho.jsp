
<%@ page import="java.sql.*" %>
<%
String fn=request.getParameter("fn");
String em=request.getParameter("em");
String pho=request.getParameter("pho");
String mes=request.getParameter("mes");

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/portal","root","12345");
	Statement st=con.createStatement();
	st.executeUpdate("insert into reachus(fn,em,pho,mes) values('"+fn+"','"+em+"','"+pho+"','"+mes+"')");
	response.sendRedirect("save.html");
	
	
}
catch(Exception e)
{
	response.sendRedirect("error.html");
}
%>