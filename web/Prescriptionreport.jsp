
 <%-- 
    Document   : studeview
    Created on : 8 Apr, 2016, 7:23:30 PM
    Author     : raghava
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.commondb.Common_DB"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>College information</title>
		<meta name="description" content="Sticky Table Headers Revisited: Creating functional and flexible sticky table headers" />
		<meta name="keywords" content="Sticky Table Headers Revisited" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="css/normalize_1.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/component.css" />
		<!--[if IE]>
  		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
	</head>
        <%
HttpSession se=request.getSession();
String uname=se.getAttribute("uname").toString();
String s1=request.getParameter("in1");
String s2=request.getParameter("in2");
String s3=request.getParameter("in3");

se.setAttribute("uname", uname);

%>
        <style>
            input[type="checkbox"]{
  width: 30px; /*Desired width*/
  height: 30px; /*Desired height*/
}
        </style>
	 <body style="background-color: green">
            
                    <center>
            <form name="ff1" action="OrderPg.jsp" method="POST">
		
			
			
                 
                    <h1><font color="blue"/>Doctor Prescription Details</font></h1>	
				
                 
			
				
				<table class="">
					<thead>
						<tr>
<!--                                                     <th>CLICK</th>-->
			  <th>SELECT</th>
                          <th>SHOP NAME</th>
                        <th>BRAND NAME</th>
                        <th>QUANTITY</th>
                        <th>AMOUNT</th>
                        <th>DOSAGE</th>
                         <th>EXPIRY DATE</th>
                          <th>LOCATION</th>
                           <th>MOBILE</th>
                       
                        
						</tr>
					</thead>
					<tbody>
                                             <%
                       
                                                 //String status="Pending";
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pharmacy","root","password");
                    Statement st=con.createStatement();
                    String query=("SELECT * FROM medicine where drugcomposition='"+s1+"' and brand='"+s2+"' and dosage='"+s3+"' and status='Approved' ");
                    ResultSet rs1=st.executeQuery(query);
                        //ResultSet rs1=Common_DB.ViewTable("counselling", "college");
                        while(rs1.next())
                        {
                     %>
						<tr>
                                                   

                          <td><input type="radio" name="c1" value="<%=rs1.getString("sno")%>"/></td>
                         <td><%=rs1.getString("pharmacyname")%></td>
                          <td> <a href="Doctor.jsp"> <%=rs1.getString("brand")%><a/></td>
                        <td><%=rs1.getString("quantity")%></td>
                       
                        <td><%=rs1.getString("amount")%></td>
                        <td><%=rs1.getString("dosage")%></td>
                        <td><%=rs1.getString("expirydate")%></td>
                        <td><%=rs1.getString("location")%></td>
                             <td><%=rs1.getString("mobile")%></td>
                                 
                                                       
						</tr>
                                                <%
                                                
            }
            %>
					</tbody>
				</table>
               
			<br><br>
                    <input type="submit" class="button" name="b1" value="Submit">
                    </form>
                                        <br><br>
                    <a href="index.html">Exit</a>

			
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
		<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-throttle-debounce/1.1/jquery.ba-throttle-debounce.min.js"></script>
		<script src="js/jquery.stickyheader.js"></script>
                 </center>
	</body>
</html>



