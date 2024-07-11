package com.org;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Index extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		PrintWriter out=response.getWriter();
		
		String date = request.getParameter("date");
		String d_code = request.getParameter("d_code");
		int c_no = Integer.parseInt(request.getParameter("c_no"));
		String m_no = request.getParameter("m_no");
		String r_name = request.getParameter("r_name");
		String r_for = request.getParameter("r_for");
		String resolution = request.getParameter("resolution");
		String f_status = request.getParameter("f_status");
		String agent = request.getParameter("agent");
		String feedback = request.getParameter("feedback");
		
		try {
//			Register the Driver Class
			Class.forName("com.mysql.cj.jdbc.Driver");

//			Establish Connection
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dhl", "root", "root");

//			Create Statement
			Statement stat = conn.createStatement();

//			Execute Query
			stat.executeUpdate("insert into dhl_entry(date,d_code,c_no,m_no,r_name,r_for,resolution,f_status,agent,feedback) values ('" + date + "'," + d_code
					+ "," + c_no + ", '" + m_no + "', '" + r_name + "', '" + r_for + "', '" + resolution + "', '" + f_status + "', '" + agent + "', '" + feedback + "')");
			
			//out.println("<h1>Data inserted successfully!!</h1>");
			response.sendRedirect("dhl_entry_data.jsp");
			
//			Close the Connection
			conn.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
