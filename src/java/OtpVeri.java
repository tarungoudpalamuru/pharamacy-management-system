/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.sql.DriverManager;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author LENOVO
 */
public class OtpVeri extends HttpServlet {

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
            out.println("<title>Servlet OtpVeri</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet OtpVeri at " + request.getContextPath() + "</h1>");
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
      
        HttpSession se=request.getSession();
    
    String uname=se.getAttribute("uname").toString();
    String mednm=se.getAttribute("mednm").toString();
    String brand=se.getAttribute("brand").toString();
    String amount=se.getAttribute("amount").toString();
    String quantity=se.getAttribute("quantity").toString();
    String tamnt=se.getAttribute("tamnt").toString();
     String em=se.getAttribute("em").toString();
    
    String ot=request.getParameter("otp");
    
    try
        {
        
       Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pharmacy","root","password");
           Statement st=con.createStatement();
           ResultSet  rs=st.executeQuery("select * from customer where username='"+uname+"' and otp1='"+ot+"'");
            if(rs.next())
            {
                
       se.setAttribute("uname", uname);
       se.setAttribute("mednm", mednm);
        se.setAttribute("brand", brand);
         se.setAttribute("amount", amount);
          se.setAttribute("quantity", quantity);
          se.setAttribute("tamnt", tamnt);
           se.setAttribute("em", em);
               //response.sendRedirect("PaymentPg.jsp");

           response.sendRedirect("PayType.jsp");
                
            }
        }catch(ClassNotFoundException | SQLException e){
        
        System.out.println(e);}
        
        
        
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
