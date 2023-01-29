 <%@page import="java.sql.SQLException"%>

 <%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>Symptom Report</title>
		<meta name="description" content="Sticky Table Headers Revisited: Creating functional and flexible sticky table headers" />
		<meta name="keywords" content="Sticky Table Headers Revisited" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/component.css" />
		<!--[if IE]>
  		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
	</head>
        
        <%
HttpSession se=request.getSession();
String uname=se.getAttribute("uname").toString();

se.setAttribute("uname", uname);

%>
        
        
        <style>
            
            .text{
                
                
     height:200px;
    font-size:14pt;
            }
  .button {
  display: inline-block;
  border-radius: 4px;
  background-color: #000000;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 20px;
  padding: 5px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
  
  
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
.button:active {
  
}
</style>
<script>
    function one()
    {
        var a1=document.formm.date1.value;
        
        if(a1=="")
        {
            alert("First Select Date");
            return false;
        }
        return true;
    }
</script>

	<body style="background-color: skyblue">
        <center>
             <br><br><br><br><br>
            <h1><b><i>System Report</i></b></h1><br>
            <form  action="OrderPg.jsp" method="post">
            
                    <table border="1" >
                        <tbody>
                        <tr>
                        
                                 <td><b>Select</b></td>
                                    <td><b>Drug Composition</b></td>
                                    <td><b>Amount</b></td>
                                    <td><b>Quantity</b></td>
                                    <td><b>Shop Name</b></td>
                                    <td><b>Brand Name</b></td>
                                    <td><b>Dosage</b></td>
                                    <td><b>Symptom</b></td>
                                    <td><b>Expiry Date</b></td>
                                    <td><b>Location</b></td>
                                    <td><b>Mobile No</b></td>
                                    
                        </tbody>
                                 
                                    
                           
               <%try{
                   String s1=request.getParameter("symtom");
                  System.out.println("......"+s1);
                  System.out.println("??>>>>"+s1);
                   
                    Connection conn = null;
                    String status="Pending";
                    Class.forName("com.mysql.jdbc.Driver");
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pharmacy","root", "password");
                    ResultSet rs = null;
                    Statement st=null;
                   
                    st=conn.createStatement();
                    rs = st.executeQuery("select * from medicine where symptom='"+s1+"' and status='Approved'");
           int i=0; 
 
                while(rs.next()){ %>
                        

                           
                <tr>
                            <td><input type="radio" name="c1" value="<%=rs.getString("sno")%>"/></td>
                             <td><%= rs.getString("drugcomposition") %></td>
                            <td><%= rs.getString("amount") %></td>
                            <td><%= rs.getString("quantity") %></td>
                            <td><%= rs.getString("pharmacyname") %></td>
                             <td><%= rs.getString("brand") %></td>
                            <td><%= rs.getString("dosage") %></td>
                            <td><%= rs.getString("symptom") %></td>
                            <td><%= rs.getString("expirydate") %></td>
                            <td><%= rs.getString("location") %></td>
                            <td><%= rs.getString("mobile") %></td>
                </tr>
                             
                        <%
                        
                                i++;
                               
                                 
                }
                  }catch(SQLException e){ 
                            System.out.println(e);
                    } %>
                    </table><br><br>
                    <center>  <input type="submit" class="button" name="b1" value="Submit"></center>
                    <br><br>
                    <a href="index.html">Exit</a>

		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
		<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-throttle-debounce/1.1/jquery.ba-throttle-debounce.min.js"></script>
		<script src="js/jquery.stickyheader.js"></script>
            </form>   
        </center>
	</body>
</html>