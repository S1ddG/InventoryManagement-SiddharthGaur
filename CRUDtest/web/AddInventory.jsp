<%-- 
    Document   : AddInventory
    Created on : 5 Mar, 2021, 2:01:41 PM
    Author     : gaurs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <h1>Add Inventory</h1>
        <div class="mainContainer">
        <div class="regBox">
            <form method="post" id = "form" action="AddInventory">
                
                <p>Set Item Name</p>
                <input type="text" name="itemName" placeholder="Item Name" required>
                
                <p>Set Image</p>
                <input type="text" name="itemImage" placeholder="Image URL Here" required>
                
                <p>Category</p>
                <select name="itemCategory">
                    <option value="Book">Book</option>
                    <option value="Pen">Pen</option>
                </select>
                <br><br>
                <p>Set Quantity</p>
              <input type="text" name="itemQuantity" placeholder="Quantity" required>
              
                <p>Set Unit</p>
                <input type="text" name="itemUnit" placeholder="Units" required>
                
                <p>Set Per Unit Price</p>
                <input type="text" name="itemUnitPrice" placeholder="Price" required>

                <p>Status</p>
                <select name="itemStatus">
                    <option value="In-Stock">In-Stock</option>
                    <option value="OOS">Out-of-Stock</option>
                </select>
                <br><br>
                
                <input type="submit" value="Add Item" name="submit">
                <br>
            </form>
        </div>   
    </div>
    </body>
</html>
