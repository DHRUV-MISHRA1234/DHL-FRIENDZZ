package com.org;
import java.sql.*;
public class ConnectionProvider {
	public static Connection getCon()
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/dhl?useSSL=false","root","root");
			return conn;
		}
		catch(Exception e)
		{
			System.out.print(e);
			return null;
		}
	}
}

