<%-- 
    Document   : UserPage
    Created on : 4 Mar, 2021, 2:47:01 PM
    Author     : gaurs
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="style/userpage.css" type="text/css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
    </head>
    <body class="body">
        <%
        String user = (String)session.getAttribute("username");
       
        %>
        
        
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
      <a class="navbar-brand" href="#"><h4>Inventory Management System</h4></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            <%out.println(user);%>
            
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="InventoryPage.jsp">Inventory Manager</a></li>
            <li><a class="dropdown-item" href="EditUser.jsp">Edit Profile</a></li>
            
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="Logout.jsp">Logout</a></li>
          </ul>
        </li>
        
    </div>
  </div>
</nav>
        
            <%
            //Retreival of User Data
            
            Connection con = null;
            Statement stmt = null;
            ResultSet rs = null;
            int count = 0;
            
            try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javatest", "root", "");
            stmt = con.createStatement();
           rs = stmt.executeQuery("select * from register where name = '"+user+"'");
            
           while(rs.next())
           {
               
               String username = rs.getString("name");
               String lastname = rs.getString("lname");
               String salutation = rs.getString("salutation");
        
                String gender = rs.getString("gender");
                String phone = rs.getString("phone");
                String email = rs.getString("email");
                String address = rs.getString("address");
                String role = rs.getString("role");
                String status = rs.getString("status");
                String password = rs.getString("pass");
                
                count++;
                %>
                
                <div class="alert alert-warning alert-dismissible fade show" role="alert" style="color:black">
                <strong>Welcome! <%out.println(username+".");%></strong> Click on The Drop-Down To Explore
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                              </div>
                <br>
                <h3>Hello, <%out.println(username);%></h3>
                <h3>Phone: <%out.println(phone);%></h3>
                <h3>Email: <%out.println(email);%></h3>
                <h3>Role: <%out.println(role);%></h3>
                <h3>Status: <%out.println(status);%></h3>
                <br>
                <h4 class="info">In Case If You Wish To Edit Your Profile, Kindly Check The Edit Profile Section.</h4>
                
                <%
                }
           
           
        }
                        catch(Exception e)
                        {
                            out.println("Error"+e);
                        } 
            %>
            
    </body>
</html>
