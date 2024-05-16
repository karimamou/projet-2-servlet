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
        
        <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
            color: #333;
        }
        h1 {
            color: #212529;
            text-align: center;
            margin-top: 20px;
        }
        .col-sm-4{
           margin-left: 25%;
            width: 50%;
            
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            text-align: center;
        }
        .form-container, .panel-body {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
            display: inline-block;
            width: 50%;
        }
        label {
            font-weight: bold;
            color: #555;
        }
        input[type="text"] {
            width: calc(100% - 22px);
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        input[type="submit"], input[type="reset"] {
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            background-color: #ffc107;
            color: #212529;
            transition: background-color 0.3s ease;
            margin-left: 25%;
        }
        input[type="submit"]:hover, input[type="reset"]:hover {
            background-color: #ffc107;
        }
        table {
            width: 100%;
            border-collapse: collapse;
           
            
            
            
        }
        .panel-body{
            margin-left: 25%;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: left;
        }
        th {
            background-color: #ffc107;
            color: #212529;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        a {
            text-decoration: none;
            color: #007bff;
            transition: color 0.3s ease;
        }
        a:hover {
            color: #0056b3;
        }
    </style>
        
 
    <script>
        // Fonction pour afficher la barre de succès et rediriger vers index.jsp
        function showSuccessAndRedirect() {
            alert("Mise à jour réussie !");
            window.location.replace("course.jsp");
        }
    </script>

    </head>
    <body>
        <h1>course</h1>
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
                
                
                <br>
                <br>
                <br>
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
