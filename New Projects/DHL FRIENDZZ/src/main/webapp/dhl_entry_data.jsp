<%@ page import="com.org.ConnectionProvider" %>
<%@ page import="java.sql.*" %>
<html>
<head>
<style>
.dhl {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 95%;
}

.dhl td, .employee th {
  border: 1px solid #ddd;
  padding: 8px;
}

.dhl tr:nth-child(even){background-color: #f2f2f2;}

.dhl tr:hover {background-color: #ddd;}

.dhl th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>
</head>
<body>
<br>
<center>
<table class="dhl">
<tr>
<th>Date</th>
<th>Dealer Code</th>
<th>Customer No</th>
<th>Mobile No</th>
<th>Retailer Name</th>
<th>Request For</th>
<th>Resolution</th>
<th>Final Status</th>
<th>Agent</th>
<th>Feedback</th>
<th>Delete</th>
</tr>
<%
    Connection conn = null;
    Statement st = null;
    ResultSet rs = null;
    try {
        conn = ConnectionProvider.getCon();
        st = conn.createStatement();
        rs = st.executeQuery("SELECT * FROM dhl_entry");
        while(rs.next()) {
%>
<tr>
<td><%= rs.getString(1) %></td>
<td><%= rs.getString(2) %></td>
<td><%= rs.getInt(3) %></td>
<td><%= rs.getString(4) %></td>
<td><%= rs.getString(5) %></td>
<td><%= rs.getString(6) %></td>
<td><%= rs.getString(7) %></td>
<td><%= rs.getString(8) %></td>
<td><%= rs.getString(9) %></td>
<td><%= rs.getString(10) %></td>
<td><a href="delete_query.jsp?d_code=<%=rs.getString(2)%>" class="btn">Delete</a></td>
</tr>
<%
        }
    } catch(Exception e) {
        e.printStackTrace();
    } finally {
        try {
            if (rs != null) rs.close();
            if (st != null) st.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
</table>
</center>
<br>
<br>
<br>
<br>
</body>
</html>
