<%-- 
    Document   : Prescription
    Created on : Jan 30, 2019, 7:22:24 PM
    Author     : Anju
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.button {
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
</style>
</head>
<%
HttpSession se=request.getSession();
String uname=se.getAttribute("uname").toString();
System.out.println(uname+"??>?>?>");
se.setAttribute("uname", uname);

%>
<body style="background-color: pink">

<center>

    <br><br><br><br><br><br>
<a href="Symtoms.jsp" class="button">Normal Symptoms</a>
<br><br><br><br><br>
<a href="Doctors1.jsp" class="button">Doctor Prescription Medicine</a>

<br><br><br>
<a href="index.jsp">Exit</a>
</center>

</body>
</html>
