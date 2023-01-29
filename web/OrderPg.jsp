<%-- 
    Document   : admin
    Created on : 10 Jan, 2019, 10:07:29 AM
    Author     : Prabu
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title></title>

<link href="https://fonts.googleapis.com/css?family=Poppins:400,700,900" rel="stylesheet">

<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

<link type="text/css" rel="stylesheet" href="css/owl.carousel.css" />
<link type="text/css" rel="stylesheet" href="css/owl.theme.default.css" />

<link rel="stylesheet" href="css/font-awesome.min.css">

<link type="text/css" rel="stylesheet" href="css/style_1.css" />
        <title>Event Co</title>
    </head>
    
    <%
    HttpSession se=request.getSession();
    String c1=request.getParameter("c1");
    
String uname=se.getAttribute("uname").toString();


System.out.println(uname+"??>?>?>");

    
   try{
       
   
    String query="SELECT * FROM medicine where sno='"+c1+"'";
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pharmacy","root","password");
                    Statement st=con.createStatement();
                    ResultSet rs1=st.executeQuery(query);
                    if(rs1.next())
                     
                    
                                                 {
                                                     String mednm=rs1.getString("drugcomposition");
                                                      String brand=rs1.getString("brand");
                                                       String amount=rs1.getString("amount");
   
    %>
    <body background="images/c1.jpg">
<!--        <div class="section-bg" style="background-image:url(./img/background02.jpg)" data-stellar-background-ratio="0.5"></div>-->
      <form action="EmailVer" method="post">  
    <center>
        <br>
        <br>
        <h1>  <a style="color: #dd0a37" >Enter Details</a></h1>
        
      
        <br><br>
        <input type="text" name="in1" value="<%=mednm%>" style="text-align: center;height: 40px;width: 300px;" placeholder="Enter MedicineName"/>
        <br><br>
        
                 <input type="text" name="in2" value="<%=brand%>" style="text-align: center;height: 40px;width: 300px;" placeholder="Enter BrandName"/>

         <br><br>
                        <input type="text" name="in3" value="<%=amount%>" style="text-align: center;height: 40px;width: 300px;" placeholder="Enter MedicineDosage"/>

         
                        <br><br>
                        <input type="text" name="in4" value="" style="text-align: center;height: 40px;width: 300px;" placeholder="Enter Quantity"/>

        <br><br>
        <input type="email" name="in5" value="" style="text-align: center;height: 40px;width: 300px;" placeholder="Enter Email Id"/>
         
          <td>
             
         
         
         <br><br>
         <input type="submit" class="main-btn" value="Submit" />
         <%
         
         se.setAttribute("mednm", mednm);
          se.setAttribute("brand", brand);
          se.setAttribute("amount", amount);  
          se.setAttribute("uname", uname);  
                                                 }
                    
         }catch(Exception e){
   
             System.out.println(e);
   }
    
    
    
         %>
       
          <br><br><br>
    </center>
        

      </form>
      </html>

      