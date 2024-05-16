<%-- 
    Document   : course
    Created on : 14 mai 2024, 21:18:59
    Author     : user
--%>
<%@page import="java.sql.*" %> 
<% Class.forName("com.mysql.jdbc.Driver"); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>course hhhhldddusu</h1>
        <div class="row">
            <div class="col-sm-4">
                <form method="POST" align="left" action="add.jsp">
                    <div>  
                        <label class="form-label"> Course Name </label> 
                        <input type="text" id="name" name="name" placeholder="Course Name" class="form-control" required> 
                        
                    </div>
                     <div>  
                        <label class="form-label"> Duration </label> 
                        <input type="text" id="duration" name="duration" placeholder="Duration" class="form-control" required> 
                    </div>
                    
                    <div>  
                        <input type="submit" name="submit" class="btn btn-info" value="submit">
                        <input type="reset" name="reset" class="btn btn-warning" value="reset">
                    </div>
                </form>
                
                
                
            </div>
            <div class="col-sm-8">
                <div class="panel-body">
                    <table id="tbl-course" class="table table-responsive table-bordered" cellpadding="0" width="100%">
                    
                        <thead> 
                            <tr>
                                <th>Course Name</th>
                                <th>Duration</th>
                                <th>Edit</th>
                                <th>Delete</th>
                            </tr>
                            
                        <tbody> 
                            <% 
                            
                            Connection con;
                            PreparedStatement pst;
                            ResultSet rs;

                            Class.forName("com.mysql.jdbc.Driver");
                            con = DriverManager.getConnection("jdbc:mysql://localhost/jspstudm","root","");
                            String query = "select * from course";
                            Statement st = con.createStatement();
                            rs = st.executeQuery(query);
                            while(rs.next()){
                                String id = rs.getString("id");
                                
                                
                            
                            
                            %>
                            
                            
                            
                            
                            <tr>
                                <td><%=rs.getString("coursename") %></td>
                                <td><%=rs.getString("duration") %></td>
                                <td><a href="courseupdate.jsp?id=<%=id %>"> Edit</a></td>
                                <td><a href="coursedelete.jsp?id=<%=id %>"> Delete</a></td>
                                
                            </tr>
                            
      
                            <% } %>
                        </tbody>
                        
                    </table>
                </div>
            
        </div>
    </body>
</html>
