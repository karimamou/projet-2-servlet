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
        <link href="../bootstrap-5.3.3-dist/bootstrap-5.3.3-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
       
        <title>JSP Page</title>
    </head>
    <body>
        <h1>course</h1>
        <div class="row">
            <div class="col-sm-4">
                <form method="POST" align="left" action="scoredata.jsp">
                 <% 
                            Connection con;
                            PreparedStatement pst;
                            ResultSet rs;

                            Class.forName("com.mysql.jdbc.Driver");
                            con = DriverManager.getConnection("jdbc:mysql://localhost/jspstudm","root","");
                            
                            String id = request.getParameter("id");
                            
                            pst = con.prepareStatement("select * from score where id = ?");
                            pst.setString(1,id);
                            rs = pst.executeQuery();
                            while(rs.next())
                            {
                  
                 
                 
                 %>   
                    
                    
                    
                    <div>  
                        <label class="form-label"> Course ID </label> 
                        <input type="text" id="id" name="id" placeholder="Course ID" class="form-control" value="<%= rs.getString("id") %>"      required> 
                        
                    </div>
                    <div>  
                        <label class="form-label"> Course Name </label> 
                        <input type="text" id="name" name="name" placeholder="Course Name" class="form-control"value="<%= rs.getString("course") %>"  required> 
                        
                    </div>
                     <div>  
                        <label class="form-label"> Note</label> 
                        <input type="text" id="note" name="note" placeholder="note" class="form-control" value="<%= rs.getString("note") %>" required> 
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

