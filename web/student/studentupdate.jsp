<%-- 
    Document   : courseupdate
    Created on : 15 mai 2024, 12:05:43
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
        <h1>Student</h1>
        <div class="row">
            <div class="col-sm-4">
                <form method="POST" align="left" action="studentdata.jsp">
                 <% 
                            Connection con;
                            PreparedStatement pst;
                            ResultSet rs;

                            Class.forName("com.mysql.jdbc.Driver");
                            con = DriverManager.getConnection("jdbc:mysql://localhost/jspstudm","root","");
                            
                            String id = request.getParameter("id");
                            
                            pst = con.prepareStatement("select * from student where id = ?");
                            pst.setString(1,id);
                            rs = pst.executeQuery();
                            while(rs.next())
                            {
                  
                 
                 
                 %>   
                    
                    
                    
                    <div>  
                        <label class="form-label"> Student ID </label> 
                        <input type="text" id="id" name="id" placeholder="Course ID" class="form-control" value="<%= rs.getString("id") %>"      required> 
                        
                    </div>
                    <div>  
                        <label class="form-label"> Student Name </label> 
                        <input type="text" id="sname" name="sname" placeholder="Student Name" class="form-control"value="<%= rs.getString("studname") %>"  required> 
                        
                    </div>
                     <div>  
                        <label class="form-label"> Course </label> 
                        <input type="text" id="course" name="course" placeholder="Course" class="form-control" value="<%= rs.getString("course") %>" required> 
                    </div>
                    
                     <div>  
                        <label class="form-label"> Address </label> 
                        <input type="text" id="address" name="address" placeholder="Address" class="form-control" value="<%= rs.getString("address") %>" required> 
                    </div>
                    
                    <div>  
                        <label class="form-label"> Phone </label> 
                        <input type="text" id="phone" name="phone" placeholder="Phone" class="form-control" value="<%= rs.getString("phone") %>" required> 
                    </div>
                    
                    <div>  
                        <input type="submit" name="submit" class="btn btn-info" value="submit">
                        <input type="reset" name="reset" class="btn btn-warning" value="reset">
                    </div>
                    <% } %>
                    
                </form>
                
                
                
            </div>
            <div class="col-sm-8">
                
            
        </div>
             </div>
    </body>
</html>

