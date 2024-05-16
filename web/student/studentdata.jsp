<%@page import="java.sql.*" %> 
<% Class.forName("com.mysql.jdbc.Driver"); %>
<% 
int courseid =  Integer.parseInt(request.getParameter("id"));
String studname = request.getParameter("studname");
String course = request.getParameter("course");
String address = request.getParameter("address");
String phone = request.getParameter("phone");

Connection con;
PreparedStatement pst;

 Class.forName("com.mysql.jdbc.Driver");
 con = DriverManager.getConnection("jdbc:mysql://localhost/jspstudm","root","");
 pst = con.prepareStatement("update student set studname = ? , course = ? ,address = ? , phone = ? where id = ?");
 pst.setString(1,studname);
 pst.setString(2,course);
 pst.setString(3,address);
 pst.setString(4,phone);
 pst.setInt(5,courseid);
 pst.executeUpdate();
 
response.sendRedirect("student.jsp");

 %>
