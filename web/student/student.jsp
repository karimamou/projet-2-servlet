<%-- 
    Document   : course
    Created on : 14 mai 2024, 21:18:59
    Author     : user
--%>
<%@page import="java.sql.*" %> 
<% Class.forName("com.mysql.jdbc.Driver"); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<% 
    Connection con;
    PreparedStatement pst;
    ResultSet rs;



%>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Student Registation</h1>
        <div class="row">
            <div class="col-sm-4">
                <form method="POST" align="left" action="add.jsp">
                    <div>  
                        <label class="form-label"> Student Name </label> 
                        <input type="text" id="sname" name="sname" placeholder="Student Name" class="form-control" required> 
                        
                    </div>
                    
                     <div>  
                        <label class="form-label"> Course </label> 
                        <select name="course" id="course" class="form-control">
                            <% 


                            Class.forName("com.mysql.jdbc.Driver");
                            con = DriverManager.getConnection("jdbc:mysql://localhost/jspstudm","root","");
                            String query = "select * from course";
                            Statement st = con.createStatement();
                            rs = st.executeQuery(query);
                            while(rs.next())
                            {
                            String id = rs.getString("id");
                            String coursename = rs.getString("coursename");
                         
                            %>
                            
                            <option value="<%=id %>"><%= coursename %></option>
                            
                            <% 
                                }
                            %>
                            
                            
                            
                            
                            
                            
                        </select>
                    </div>
                    
                            <!-- comment <div>  
                        <label class="form-label"> Course </label> 
                        <select name="course" id="course" class="form-control">
                            <option>course</option>  
                        </select>
                    </div>-->
                    
                    <div>  
                        <label class="form-label"> Address </label> 
                        <input type="text" id="address" name="address" placeholder="Address" class="form-control" required> 
                        
                    </div>
                    
                    <div>  
                        <label class="form-label"> Phone </label> 
                        <input type="text" id="phone" name="phone" placeholder="Phone" class="form-control" required> 
                        
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
                                <th>Student Name</th>
                                <th>Course</th>
                                <th>Address</th>
                                <th>Phone</th>
                                
                                <th>Edit</th>
                                <th>Delete</th>
                            </tr>
                            
                        <tbody> 
                            <% 
                            
                            Class.forName("com.mysql.jdbc.Driver");
                            con = DriverManager.getConnection("jdbc:mysql://localhost/jspstudm","root","");
                            String query3 = "select * from student";
                            Statement st3 = con.createStatement();
                            rs = st.executeQuery(query3);
                            while(rs.next()){
                                String id = rs.getString("id");
                                
                               
                            
                            
                            %>
                            
                            
                            
                            
                            <tr>
                                <td><%=rs.getString("studname") %></td>
                                <td><%=rs.getString("course") %></td>
                                <td><%=rs.getString("address") %></td>
                                <td><%=rs.getString("phone") %></td>
                                
                                 <td><a href="studentupdate.jsp?id=<%=id %>"> Edit</a></td>
                                <td><a href="studentdelete.jsp?id=<%=id %>"> Delete</a></td>
                                
                            </tr>
                            
      <%
          }    
      %>
                           
                        </tbody>
                        
                    </table>
                </div>
            
        </div>
    </body>
</html>
