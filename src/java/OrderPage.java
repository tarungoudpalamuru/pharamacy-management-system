/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author LENOVO
 */
public class OrderPage extends HttpServlet {
      static Properties properties = new Properties();
   static
   {
      properties.put("mail.smtp.host", "smtp.gmail.com");
      properties.put("mail.smtp.socketFactory.port", "465");
      properties.put("mail.smtp.socketFactory.class",
                     "javax.net.ssl.SSLSocketFactory");
      properties.put("mail.smtp.auth", "true");
      properties.put("mail.smtp.port", "465");
   }

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
            out.println("<title>Servlet OrderPage</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet OrderPage at " + request.getContextPath() + "</h1>");
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
        Connection con=null;
        Statement st=null;
        ResultSet rs=null;
        
        
        
        String uname=se.getAttribute("uname").toString();
    String mednm=se.getAttribute("mednm").toString();
    String brand=se.getAttribute("brand").toString();
    String amount=se.getAttribute("amount").toString();
    String quantity=se.getAttribute("quantity").toString();
    String tamnt=se.getAttribute("tamnt").toString();
    String em=se.getAttribute("em").toString();
    String p1=se.getAttribute("p1").toString();
    String s1=request.getParameter("i1");
    String s2=request.getParameter("i2");
        System.out.println("pay type : "+p1);
         System.out.println(uname+",,,,,"+mednm+"...."+brand+"...."+amount);

        try
        {
        
            if(p1.equals("pay1")){
       Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pharmacy","root","password");
            st=con.createStatement();
            int rs1=st.executeUpdate("Insert into payment(cusnm,mednm,brandnm,amount,quantity,uaccno,ucvvno,tamnt) Values('"+uname+"','"+mednm+"','"+brand+"','"+amount+"','"+quantity+"','"+s1+"','"+s2+"','"+tamnt+"')");
          
            if(rs1>0)
            {
                System.out.println("succ");
           final String  from="cloudbean2019@gmail.com";
           final String password="j@v@be@n19";
           final String to="cloudbean2019@gmail.com";
           
         Session session = Session.getInstance(properties, new javax.mail.Authenticator() 
         {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(from, password);
            }});
         
         Message message = new MimeMessage(session);
         message.setFrom(new InternetAddress(from));
         message.setRecipients(Message.RecipientType.TO, 
         InternetAddress.parse(em));
         message.setSubject("Payment Confirmation");
         //message.setSubject("private key");
        // String mgs="";
       //  msg="a;
         message.setText("Your Payment is successfully Received , so we will delivery your order within 2 hours...\n thank you");
         //message.setText("private key is "+"\n"+pri);
   
        Multipart multipart = new MimeMultipart();

      //addAttachments(multipart);
      //message.setContent(multipart);
      // Send message
      Transport.send(message);
      
      String mes="Paid Successfully";
      se.setAttribute("mes", mes);
      response.sendRedirect("RsltPg.jsp");
               
            }
            else
            {
                System.out.println("fail");   
            }
        }
            
            else if(p1.equals("pay2")){
                try
                {
                    
            
            final String  from="cloudbean2019@gmail.com";
           final String password="j@v@be@n19";
           final String to="cloudbean2019@gmail.com";
           
         Session session = Session.getInstance(properties, new javax.mail.Authenticator() 
         {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(from, password);
            }});
         
         Message message = new MimeMessage(session);
         message.setFrom(new InternetAddress(from));
         message.setRecipients(Message.RecipientType.TO, 
         InternetAddress.parse(em));
         message.setSubject("COD");
         //message.setSubject("private key");
        // String mgs="";
       //  msg="a;
         message.setText("Hai "+uname+",\n       Your Purchased Medicine :"+mednm+"     Quantity: "+quantity+"     Total Amount : "+tamnt+"\n\n    we will delivery your order within 2 hours...                   Thank You!!!!");
         //message.setText("private key is "+"\n"+pri);
   
        Multipart multipart = new MimeMultipart();

      //addAttachments(multipart);
      //message.setContent(multipart);
      // Send message
      Transport.send(message);
     
      
      String mes="Thank you for purchase here, show this mail to delivery boy!!!!";
      se.setAttribute("mes", mes);
      response.sendRedirect("RsltPg.jsp");
               
            
                }
                catch(MessagingException | IOException e){
                
                    System.out.println(e);
                
                }
            }
            
            
        }
        catch(ClassNotFoundException | SQLException | IOException ex)
        {
            System.out.println(ex);
           
        } catch (MessagingException ex) {
              Logger.getLogger(OrderPage.class.getName()).log(Level.SEVERE, null, ex);
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
