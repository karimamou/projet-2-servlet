<%@page import="java.sql.*" %> 
<% Class.forName("com.mysql.jdbc.Driver"); %>
<% 
String courseid = request.getParameter("id");
String coursename = request.getParameter("name");
String note = request.getParameter("note");

Connection con;
PreparedStatement pst;

 Class.forName("com.mysql.jdbc.Driver");
 con = DriverManager.getConnection("jdbc:mysql://localhost/jspstudm","root","");
 pst = con.prepareStatement("update score set course = ? , note = ? where id = ?");
 pst.setString(1,coursename);
 pst.setString(2,note);
 pst.setString(3,courseid);
 pst.executeUpdate();
 
response.sendRedirect("score.jsp");

 %>
