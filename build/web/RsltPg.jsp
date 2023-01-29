<%-- 
    Document   : RsltPg
    Created on : Mar 20, 2019, 12:33:03 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <%
    
    
    HttpSession se=request.getSession();
    
    String mes=se.getAttribute("mes").toString();
    
    
    %>
    <body style="background: #ffccc0"><center>
        
        <br><br><br>
        
        <h1><%=mes%></h1>
        <br><br><br>
        
        <a href="index.html">Exit</a>
    </center>
    </body>
</html>
