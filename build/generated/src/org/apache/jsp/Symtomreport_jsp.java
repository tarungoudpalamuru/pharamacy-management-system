package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.SQLException;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;
import java.util.*;

public final class Symtomreport_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write(" \n");
      out.write("\n");
      out.write(" \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\" class=\"no-js\">\n");
      out.write("\t<head>\n");
      out.write("\t\t<meta charset=\"UTF-8\" />\n");
      out.write("\t\t<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\"> \n");
      out.write("\t\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"> \n");
      out.write("\t\t<title>Symtom Report</title>\n");
      out.write("\t\t<meta name=\"description\" content=\"Sticky Table Headers Revisited: Creating functional and flexible sticky table headers\" />\n");
      out.write("\t\t<meta name=\"keywords\" content=\"Sticky Table Headers Revisited\" />\n");
      out.write("\t\t<meta name=\"author\" content=\"Codrops\" />\n");
      out.write("\t\t<link rel=\"shortcut icon\" href=\"../favicon.ico\">\n");
      out.write("\t\t<link rel=\"stylesheet\" type=\"text/css\" href=\"css/normalize.css\" />\n");
      out.write("\t\t<link rel=\"stylesheet\" type=\"text/css\" href=\"css/demo.css\" />\n");
      out.write("\t\t<link rel=\"stylesheet\" type=\"text/css\" href=\"css/component.css\" />\n");
      out.write("\t\t<!--[if IE]>\n");
      out.write("  \t\t<script src=\"http://html5shiv.googlecode.com/svn/trunk/html5.js\"></script>\n");
      out.write("\t\t<![endif]-->\n");
      out.write("\t</head>\n");
      out.write("        <style>\n");
      out.write("            \n");
      out.write("            .text{\n");
      out.write("                \n");
      out.write("                \n");
      out.write("     height:200px;\n");
      out.write("    font-size:14pt;\n");
      out.write("            }\n");
      out.write("  .button {\n");
      out.write("  display: inline-block;\n");
      out.write("  border-radius: 4px;\n");
      out.write("  background-color: #000000;\n");
      out.write("  border: none;\n");
      out.write("  color: #FFFFFF;\n");
      out.write("  text-align: center;\n");
      out.write("  font-size: 20px;\n");
      out.write("  padding: 5px;\n");
      out.write("  width: 200px;\n");
      out.write("  transition: all 0.5s;\n");
      out.write("  cursor: pointer;\n");
      out.write("  margin: 5px;\n");
      out.write("  \n");
      out.write("  \n");
      out.write("}\n");
      out.write("\n");
      out.write(".button span {\n");
      out.write("  cursor: pointer;\n");
      out.write("  display: inline-block;\n");
      out.write("  position: relative;\n");
      out.write("  transition: 0.5s;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".button span:after {\n");
      out.write("  content: '\\00bb';\n");
      out.write("  position: absolute;\n");
      out.write("  opacity: 0;\n");
      out.write("  top: 0;\n");
      out.write("  right: -20px;\n");
      out.write("  transition: 0.5s;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".button:hover span {\n");
      out.write("  padding-right: 25px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".button:hover span:after {\n");
      out.write("  opacity: 1;\n");
      out.write("  right: 0;\n");
      out.write("}\n");
      out.write(".button:active {\n");
      out.write("  \n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("<script>\n");
      out.write("    function one()\n");
      out.write("    {\n");
      out.write("        var a1=document.formm.date1.value;\n");
      out.write("        \n");
      out.write("        if(a1==\"\")\n");
      out.write("        {\n");
      out.write("            alert(\"First Select Date\");\n");
      out.write("            return false;\n");
      out.write("        }\n");
      out.write("        return true;\n");
      out.write("    }\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("\t<body style=\"background-color: skyblue\">\n");
      out.write("        <center>\n");
      out.write("             <br><br><br><br><br>\n");
      out.write("            <h1><b><i>System Report</i></b></h1><br>\n");
      out.write("        <form  action=\"index.html\">\n");
      out.write("            \n");
      out.write("                    <table border=\"1\" >\n");
      out.write("                        <tbody>\n");
      out.write("                        <tr>\n");
      out.write("                        \n");
      out.write("                                    <td><b>Medicine Name</b></td>\n");
      out.write("                                    <td><b>Amount</b></td>\n");
      out.write("                                    <td><b>Quantity</b></td>\n");
      out.write("                                    <td><b>Company</b></td>\n");
      out.write("                                    <td><b>Dosage</b></td>\n");
      out.write("                                    <td><b>Symtom</b></td>\n");
      out.write("                                    <td><b>Expiry Date</b></td>\n");
      out.write("                                    <td><b>Loaction</b></td>\n");
      out.write("                                    <td><b>Mobile No</b></td>\n");
      out.write("                                    \n");
      out.write("                        </tbody>\n");
      out.write("                                 \n");
      out.write("                                    \n");
      out.write("                           \n");
      out.write("               ");
try{

                    Connection conn = null;
                    String status="Pending";
                    Class.forName("com.mysql.jdbc.Driver");
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pharmacy","root", "password");
                    ResultSet rs = null;
                    Statement st=null;
                   
                    st=conn.createStatement();
                    rs = st.executeQuery("select * from medicine ");
           int i=0; 
 
                while(rs.next()){ 
      out.write("\n");
      out.write("                        \n");
      out.write("\n");
      out.write("                           \n");
      out.write("                <tr>\n");
      out.write("                            \n");
      out.write("                             <td>");
      out.print( rs.getString("medicinename") );
      out.write("</td>\n");
      out.write("                            <td>");
      out.print( rs.getString("amount") );
      out.write("</td>\n");
      out.write("                            <td>");
      out.print( rs.getString("quantity") );
      out.write("</td>\n");
      out.write("                            <td>");
      out.print( rs.getString("company") );
      out.write("</td>\n");
      out.write("                            <td>");
      out.print( rs.getString("dosage") );
      out.write("</td>\n");
      out.write("                            <td>");
      out.print( rs.getString("symtom") );
      out.write("</td>\n");
      out.write("                            <td>");
      out.print( rs.getString("expirydate") );
      out.write("</td>\n");
      out.write("                            <td>");
      out.print( rs.getString("location") );
      out.write("</td>\n");
      out.write("                            <td>");
      out.print( rs.getString("mobile") );
      out.write("</td>\n");
      out.write("                </tr>\n");
      out.write("                             \n");
      out.write("                        ");

                        
                                i++;
                               
                                 
                }
                  }catch(SQLException e){ 
                            System.out.println(e);
                    } 
      out.write("\n");
      out.write("                    </table><br><br>\n");
      out.write("                    <center>  <input type=\"submit\" class=\"button\" name=\"b1\" value=\"BACK\"></center>\n");
      out.write("           \n");
      out.write("\n");
      out.write("\t\t<script src=\"http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js\"></script>\n");
      out.write("\t\t<script src=\"http://cdnjs.cloudflare.com/ajax/libs/jquery-throttle-debounce/1.1/jquery.ba-throttle-debounce.min.js\"></script>\n");
      out.write("\t\t<script src=\"js/jquery.stickyheader.js\"></script>\n");
      out.write("            </form>   \n");
      out.write("        </center>\n");
      out.write("\t</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
