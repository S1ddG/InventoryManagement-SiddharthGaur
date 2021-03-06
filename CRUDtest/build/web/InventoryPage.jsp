<%-- 
    Document   : InventoryPage
    Created on : 5 Mar, 2021, 12:36:30 PM
    Author     : gaurs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="style/inventorypage.css" type="text/css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
    
    </head>
    <body class="body">
        <h1>My Inventory </h1>
        <%
            
        Connection conn = null;
            Statement stm = null;
            ResultSet rs1 = null;
            int counter = 0;
            
            try
        {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/javatest", "root", "");
            stm = conn.createStatement();
           rs1 = stm.executeQuery("select count(DISTINCT itemName) from inventory");
            
           while(rs1.next())
           {
               String itemcount = rs1.getString(1);
                counter++;
                %>
                <h3>Items Count: <%out.println(itemcount);%></h3>
                <%
           }
        }
           catch(Exception e)
                   {
                   out.println("Cannot Fetch: "+e);
                   }
                %>
                
        <a href="AddInventory.jsp" class="btn btn-primary" style="background:#ff435f;">Add Items</a>
        <a href="UserPage.jsp" class="btn btn-primary" style="background:#ff435f;">Home</a>
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
           rs = stmt.executeQuery("select * from inventory");
            
           while(rs.next())
           {
               String itemid = rs.getString("itemID");
               String itemname = rs.getString("itemName");
               String itemimage= rs.getString("itemImage");
               String itemcategory = rs.getString("itemCategory");
        
                String itemquantity = rs.getString("itemQuantity");
                String itemunit = rs.getString("itemUnit");
                String itemunitprice = rs.getString("itemUnitPrice");
                String itemstatus = rs.getString("itemStatus");
                
                count++;
                
                %>
        <div class="card">
            <div class="card-body">
                <h5>Item Name: <%out.println(itemname);%> </h5> 
                <img src="<%out.println(itemimage);%>" alt="Image">
                <h6 class="card-text">Category: <%out.println(itemcategory);%> </h6> 
                <h6 class="card-text">Quantity: <%out.println(itemquantity);%> </h6>
                <h6 class="card-text">Units: <%out.println(itemunit);%> </h6>
               <h6 class="card-title">Unit Price: <%out.println(itemunitprice);%></h6>
               <h6 class="card-title">Status: <%out.println(itemstatus);%> </h6>
               <br>
               <a href="EditInventory.jsp?itemID=<%out.println(itemid);%>" class="btn btn-primary" style="background: #ff435f;">Edit</a> 
               <a href="DeleteItem?itemID=<%out.println(itemid);%>" action="DeleteItem?=<%out.println(itemid);%>" class="btn btn-primary" style="background: #ff435f;">Delete</a>
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
