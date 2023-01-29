/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.commondb.Common_DB;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;
import java.util.Random;
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
public class EmailVer extends HttpServlet {
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
            out.println("<title>Servlet EmailVer</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EmailVer at " + request.getContextPath() + "</h1>");
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
         String dCase = "abcdefghijklmnopqrstuvwxyz1234567890";
   String uCase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
         Random r=new  Random();  
        String pass = "";
		 while (pass.length () != 4)
{
            int rPick = r.nextInt(2);
            if (rPick == 0){
                int spot = r.nextInt(36);
                pass += dCase.charAt(spot);
            } else if (rPick == 1) {
                int spot = r.nextInt (26);
                pass += uCase.charAt(spot);

            }
        }
        
         String s=request.getParameter("in1");
        String s1=se.getAttribute("mednm").toString();
        String s2=se.getAttribute("brand").toString();
        String s3=se.getAttribute("amount").toString();
        String uname=se.getAttribute("uname").toString();
         String em=request.getParameter("in5");
        String s4=request.getParameter("in4");
        int a=Integer.parseInt(s3);
        int b=Integer.parseInt(s4);
        int c=a*b;
        String tamnt=String.valueOf(c);
       
         System.out.println(uname+",,,,,"+s1+"...."+s3+"...."+s4+">>>>"+em+">>>>>"+tamnt);

        try
        {
         System.out.println("enter...");
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pharmacy","root","password");
            st=con.createStatement();
             rs=st.executeQuery("select * from customer where username='"+uname+"' and emailid='"+em+"'");
            if(rs.next())
            {
                System.out.println("email is checked...");
               int rs1=Common_DB.UpdateTable("pharmacy", "update customer set otp1='"+pass+"' where username='"+uname+"'");
                 if(rs1>0){
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
         message.setSubject("OTP MESSAGE");
         //message.setSubject("private key");
        // String mgs="";
       //  msg="a;
         message.setText("Your Otp is : "+pass);
         //message.setText("private key is "+"\n"+pri);
   
        Multipart multipart = new MimeMultipart();

      //addAttachments(multipart);
      //message.setContent(multipart);
      // Send message
      Transport.send(message);
      
      
      se.setAttribute("uname", uname);
       se.setAttribute("mednm", s1);
        se.setAttribute("brand", s2);
         se.setAttribute("amount", s3);
          se.setAttribute("quantity", s4);
           se.setAttribute("tamnt", tamnt);

             se.setAttribute("em", em);
      response.sendRedirect("OtpVer.jsp");
      
             }    
            }
            }
            else{
                System.out.println("<cxcxc    ...");
            }
        }
        catch(ClassNotFoundException | SQLException ex)
        {
            System.out.println(ex);
           
        } catch (MessagingException ex) {
            Logger.getLogger(EmailVer.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(EmailVer.class.getName()).log(Level.SEVERE, null, ex);
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
