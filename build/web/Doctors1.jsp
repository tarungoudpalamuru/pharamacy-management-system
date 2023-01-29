<%-- 
    Document   : AdPage
    Created on : 7 Feb, 2019, 8:45:18 PM
    Author     : Prabu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <meta charset="UTF-8">
<meta name="description" content="WebUni Education Template">
<meta name="keywords" content="webuni, education, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!--<link href="img/logo.png" rel="shortcut icon" />-->

<link href="https://fonts.googleapis.com/css?family=Raleway:400,400i,500,500i,600,600i,700,700i,800,800i" rel="stylesheet">

<link rel="stylesheet" href="css/bootstrap.min_2.css" />
<link rel="stylesheet" href="css/font-awesome.min_1.css" />
<link rel="stylesheet" href="css/owl.carousel_1.css" />
<link rel="stylesheet" href="css/style_3.css" />
    </head>
    <%
HttpSession se=request.getSession();
String uname=se.getAttribute("uname").toString();

System.out.println(uname+"?????");
se.setAttribute("uname", uname);

%>
    <body background="images/c1.jpg">
        <br><br><br><br>
    <center>
        <h1 style="color: #fff">Doctor Prescription Page</h1>
        <br> 
<a href="Doctor.jsp" class="site-btn breadcrumb-item">Doctors Prescription</a>

<br><br>
<!--<a href="Doctor.jsp" class="site-btn breadcrumb-item">Search Queries</a>-->
<br><br>
<!--<a href="Accountreport.jsp" class="site-btn breadcrumb-item">Account</a>-->
</center>
<br><br>
<a href="index.jsp" class="site-btn footer-menu" style="color: #000" >Exit</a>
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/mixitup.min.js"></script>
<script src="js/circle-progress.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/main_3.js"></script>

<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>
       
   
    </body>
</html>
