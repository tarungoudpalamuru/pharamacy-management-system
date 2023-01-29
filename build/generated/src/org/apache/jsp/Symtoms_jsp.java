package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Symtoms_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<style> \n");
      out.write("input[type=text] {\n");
      out.write("  width: 130px;\n");
      out.write("  box-sizing: border-box;\n");
      out.write("  border: 2px solid #ccc;\n");
      out.write("  border-radius: 4px;\n");
      out.write("  font-size: 16px;\n");
      out.write("  background-color: white;\n");
      out.write("  background-image: url('searchicon.png');\n");
      out.write("  background-position: 10px 10px; \n");
      out.write("  background-repeat: no-repeat;\n");
      out.write("  padding: 12px 20px 12px 40px;\n");
      out.write("  -webkit-transition: width 0.4s ease-in-out;\n");
      out.write("  transition: width 0.4s ease-in-out;\n");
      out.write("}\n");
      out.write("\n");
      out.write("input[type=text]:focus {\n");
      out.write("  width: 100%;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("<body style=\"background-color: silver\">\n");
      out.write("    <form action=\"Symtomreport.jsp\" method=\"post\">\n");
      out.write("<center>\n");
      out.write("\n");
      out.write("    <p><font color=\"black\" /><h1><b>PROBLEM</b></h1></p>\n");
      out.write("<br><br><br>\n");
      out.write("\n");
      out.write("\n");
      out.write("<select name=\"symtom\" >\n");
      out.write("    <option value=\"\">-----Select----</option>\n");
      out.write("    <option value=\"fever\">fever</option>\n");
      out.write("    <option value=\"cold\">cold</option>\n");
      out.write("    <option value=\"stomach pain\">stomach pain</option>\n");
      out.write("    <option value=\"headache\">headache</option>\n");
      out.write("    <option value=\"vomiting\">vomiting</option>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("</select>\n");
      out.write("<!--<input type=\"text\" name=\"symtom\" placeholder=\"Search..\"/>-->\n");
      out.write("\n");
      out.write("<br><br><br><br>\n");
      out.write("<input type=\"submit\" value=\"Submit\"/>\n");
      out.write("\n");
      out.write("</center>\n");
      out.write("</form>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
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
