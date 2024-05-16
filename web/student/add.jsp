<%@page import="java.sql.*" %> 
<% Class.forName("com.mysql.jdbc.Driver"); %>
<% 

String studentname = request.getParameter("sname");
String course = request.getParameter("course");
String address = request.getParameter("address");
String phone = request.getParameter("phone");

Connection con;
PreparedStatement pst;

 Class.forName("com.mysql.jdbc.Driver");
 con = DriverManager.getConnection("jdbc:mysql://localhost/jspstudm","root","");
 pst = con.prepareStatement("insert into student(studname,course,address,phone)values(?,?,?,?)");
 pst.setString(1,studentname);
 pst.setString(2,course);
 pst.setString(3,address);
 pst.setString(4,phone);
 pst.executeUpdate();
 
response.sendRedirect("student.jsp");

 %>
