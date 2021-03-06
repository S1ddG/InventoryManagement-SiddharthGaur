/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author gaurs
 */
@WebServlet(urlPatterns = {"/userUpdation"})
public class userUpdation extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet userUpdation</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet userUpdation at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        String user = (String)session.getAttribute("username");
        Connection con = null;
        Statement stmt = null;
        String salutation1 = request.getParameter("salutation");
        String username1= request.getParameter("name");
        String lastname1 = request.getParameter("lname");
        String gender1 = request.getParameter("gender");
        String phone1 = request.getParameter("phone");
        String email1 = request.getParameter("email");
        String address1 = request.getParameter("address");
        String role1 = request.getParameter("role");
        String status1 = request.getParameter("status");
        String password1 = request.getParameter("pass");
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javatest", "root", "");
            stmt = con.createStatement();
            
          stmt.executeUpdate("update register set salutation ='"+salutation1+"', name ='"+username1+"', lname = '"+lastname1+"', gender ='"+gender1+"',phone = '"+phone1+"',email='"+email1+"',address = '"+address1+"',role = '"+role1+"',status ='"+status1+"',pass = '"+password1+"' "
                  + "where id = (select id from register where name = '"+user+"')");
          
                response.sendRedirect("UserPage.jsp");       
            
            }
        
        catch (Exception e)
                {
                   out.println("Error is: "+e); 
                }
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
