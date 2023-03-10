	<%@ page import="java.sql.*" %>
<%
String first=request.getParameter("first");
String date=request.getParameter("date");
String maill=request.getParameter("maill");
String mob=request.getParameter("mob");
String gen=request.getParameter("gen");
String ad=request.getParameter("ad");
String ci=request.getParameter("ci");
String pin=request.getParameter("pin");
String state=request.getParameter("state");
String country=request.getParameter("country");
String qual=request.getParameter("qual");
String skill=request.getParameter("skill");








try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/portal","root","12345");
	Statement st=con.createStatement();
	st.executeUpdate("insert into  application(first,date,maill,mob,gen,ad,ci,pin,state,country,qual,skill) values('"+first+"','"+date+"','"+maill+"','"+mob+"','"+gen+"','"+ad+"','"+ci+"','"+pin+"','"+state+"','"+country+"','"+qual+"','"+skill+"')");
	response.sendRedirect("reach.html");
	
	
}
catch(Exception e)
{
	response.sendRedirect("error.html");
}
%>