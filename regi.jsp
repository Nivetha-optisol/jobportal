<%@ page import="java.sql.*" %>
<%
String email=request.getParameter("email");
String pas=request.getParameter("pas");
String repeatt=request.getParameter("repeatt");


try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/portal","root","12345");
	Statement st=con.createStatement();
	st.executeUpdate("insert into registration(email,pas,repeatt) values('"+email+"','"+pas+"','"+repeatt+"')");
	response.sendRedirect("logi.html");
	
	
}
catch(Exception e)
{
	response.sendRedirect("error.html");
}
%>