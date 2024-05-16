<%@page import="java.sql.*" %> 
<% Class.forName("com.mysql.jdbc.Driver"); %>
<% 

String course = request.getParameter("name");
String note= request.getParameter("note");

Connection con;
PreparedStatement pst;

 Class.forName("com.mysql.jdbc.Driver");
 con = DriverManager.getConnection("jdbc:mysql://localhost/jspstudm","root","");
 pst = con.prepareStatement("insert into score(course,note)values(?,?)");
 pst.setString(1,course);
 pst.setString(2,note);
 pst.executeUpdate();
 
out.println("record Added");

 %>