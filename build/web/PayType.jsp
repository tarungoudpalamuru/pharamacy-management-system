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
    String mednm=se.getAttribute("mednm").toString();
    String brand=se.getAttribute("brand").toString();
    String amount=se.getAttribute("amount").toString();
    String quantity=se.getAttribute("quantity").toString();
    String tamnt=se.getAttribute("tamnt").toString();
    String em=se.getAttribute("em").toString();
    String p1="pay2";
    
     se.setAttribute("uname", uname);
       se.setAttribute("mednm", mednm);
        se.setAttribute("brand", brand);
         se.setAttribute("amount", amount);
          se.setAttribute("quantity", quantity);
          se.setAttribute("tamnt", tamnt);
           se.setAttribute("em", em);
           se.setAttribute("p1", p1);
    %>
<body style="background-color: pink">

<center>

    <br><br><br><br><br><br>
    <a href="PaymentPg.jsp" class="button">Online Payment</a>
<br><br><br><br><br>
<form action="OrderPage" method="post">
    <input type="submit" class="button" value="Cash On Delivery"/>
</form>
</center>

</body>
</html>
