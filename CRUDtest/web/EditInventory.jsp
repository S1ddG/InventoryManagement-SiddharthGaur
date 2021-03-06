<%-- 
    Document   : EditInventory
    Created on : 5 Mar, 2021, 6:56:03 PM
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
        <%
        Connection con = null;
            Statement stmt = null;
            ResultSet rs,rs1 = null;
            int count = 0;
            int id;
            
            try
        {
            id = Integer.parseInt(request.getParameter("itemID"));
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javatest", "root", "");
            stmt = con.createStatement();
           rs = stmt.executeQuery("select * from inventory where itemID = '"+id+"'");
           
           while(rs.next())
           {
               String itemname = rs.getString("itemName");
               String itemimage= rs.getString("itemImage");
               String itemcategory = rs.getString("itemCategory");
        
                String itemquantity = rs.getString("itemQuantity");
                String itemunit = rs.getString("itemUnit");
                String itemunitprice = rs.getString("itemUnitPrice");
                String itemstatus = rs.getString("itemStatus");
                
                count++;
        
        
        
        
        
        %>
        <h1>Edit Inventory</h1>
        <div class="mainContainer">
        <div class="regBox">
            <form method="post" id = "form" action="EditInventory?itemID=<%out.println(id);%>">
                
                
                
                <p>Set Item Name</p>
                <input type="text" name="itemName" placeholder="Item Name" value = "<%out.println(itemname);%>"required>
                
                <p>Set Image</p>
                <input type="text" name="itemImage" placeholder="Image URL Here" value = "<%out.println(itemimage);%>"required>
                
                <p>Category</p>
                <select name="itemCategory" value = "<%out.println(itemcategory);%>">
                    <option value="Book">Book</option>
                    <option value="Pen">Pen</option>
                </select>
                <br><br>
                <p>Set Quantity</p>
              <input type="text" name="itemQuantity" placeholder="Quantity" value = "<%out.println(itemquantity);%>" required>
              
                <p>Set Unit</p>
                <input type="text" name="itemUnit" placeholder="Units" value = "<%out.println(itemunit);%>" required>
                
                <p>Set Per Unit Price</p>
                <input type="text" name="itemUnitPrice" placeholder="Price" value = "<%out.println(itemunitprice);%>" required>

                <p>Status</p>
                <select name="itemStatus" value = "<%out.println(itemstatus);%>">
                    <option value="In-Stock">In-Stock</option>
                    <option value="OOS">Out-of-Stock</option>
                </select>
                <br><br>
                
                <input type="submit" value="Update Item" name="submit">
                <br>
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
