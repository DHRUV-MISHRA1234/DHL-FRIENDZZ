<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.org.ConnectionProvider" %>
<%@page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
<%
	String d_code=request.getParameter("d_code");
	Connection conn;
	PreparedStatement ps;
	ResultSet rs;
	Class.forName("com.mysql.cj.jdbc.Driver");
	conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/dhl","root","root");
	ps=conn.prepareStatement("delete from dhl_entry where d_code=?");
	ps.setString(1, d_code);
	ps.executeUpdate(); 
	RequestDispatcher rd=request.getRequestDispatcher("/dhl_entry_data.jsp");
	rd.include(request, response);
%>
</body>
</html>

