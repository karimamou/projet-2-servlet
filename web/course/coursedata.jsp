<%@page import="java.sql.*" %> 
<% Class.forName("com.mysql.jdbc.Driver"); %>
<% 
String courseid = request.getParameter("id");
String coursename = request.getParameter("name");
String duration = request.getParameter("duration");

Connection con;
PreparedStatement pst;

 Class.forName("com.mysql.jdbc.Driver");
 con = DriverManager.getConnection("jdbc:mysql://localhost/jspstudm","root","");
 pst = con.prepareStatement("update course set coursename = ? , duration = ? where id = ?");
 pst.setString(1,coursename);
 pst.setString(2,duration);
 pst.setString(3,courseid);
 pst.executeUpdate();
 
out.println("record updated");

 %>
