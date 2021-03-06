<%-- 
    Document   : EditUser
    Created on : 4 Mar, 2021, 11:22:26 PM
    Author     : gaurs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Profile</title>
        <link rel="stylesheet" href="style/regpage.css" type="text/css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
    
    </head>
    <body class="body"> 
        
        <%
        String user = (String)session.getAttribute("username");
        
        %>
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
                
                <div class="mainContainer">
        <div class="editBox">
            <h3>Edit The Details</h3>
            <br>
            <form method="post" id = "form" action="userUpdation">
                <p>Set Salutation</p>
                <select name="salutation" value="<%out.println(salutation);%>">
                    <option value="Mr">Mr</option>
                    <option value="Ms">Ms</option>
                </select>
                <br><br>
                <p>Set First Name</p>
                <input type="text" name="name" placeholder="Username" value="<%out.println(username);%>" readonly>
                
                <p>Set Last Name</p>
                <input type="text" name="lname" placeholder="Last name" value="<%out.println(lastname);%>" required>
                
                <p>Gender</p>
                <select name="gender" value="<%out.println(gender);%>">
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                </select>
                <br><br>
                <p>Phone</p>
              <input type="text" name="phone" placeholder="Mobile" value="<%out.println(phone);%>" required>
              
                <p>Email</p>
                <input type="text" name="email" placeholder="Email Address" value="<%out.println(email);%>" required>
                
                <p>Address</p>
                <input type="text" name="address" placeholder="Address" value="<%out.println(address);%>" required>
                
                <p>Role</p>
                <input type="text" name="role" placeholder="Role" value="<%out.println(role);%>" required>
                
                <p>Status</p>
                <select name="status" value="<%out.println(status);%>">
                    <option value="Intern">Intern</option>
                    <option value="FullTime">Full Time</option>
                </select>
                <br><br>
                
                <p>Set Password</p>
                <input type="password" name="pass" placeholder="Password" value="<%out.println(password);%>" required>
                

                <br>
                <input type="submit" value="Update Details" name="submit">
                
            </form>
        </div>   
    </div>
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
