<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style> 
input[type=text] {
  width: 130px;
  box-sizing: border-box;
  border: 2px solid #ccc;
  border-radius: 4px;
  font-size: 16px;
  background-color: white;
  background-image: url('searchicon.png');
  background-position: 10px 10px; 
  background-repeat: no-repeat;
  padding: 12px 20px 12px 40px;
  -webkit-transition: width 0.4s ease-in-out;
  transition: width 0.4s ease-in-out;
}

input[type=text]:focus {
  width: 100%;
}
</style>
</head>
<%
HttpSession se=request.getSession();
String uname=se.getAttribute("uname").toString();

System.out.println(uname+"??>?>?>");
se.setAttribute("uname", uname);

%>
<body style="background-color: silver">
    <form action="Symtomreport.jsp" method="post">
<center>

    <p><font color="black" /><h1><b>PROBLEM</b></h1></p>
<br><br><br>


<select name="symtom" >
    <option value="">-----Select----</option>
    <option value="fever">fever</option>
    <option value="cold">cold</option>
    <option value="stomach pain">stomach pain</option>
    <option value="headache">headache</option>
    <option value="vomiting">vomiting</option>
    
    
    
</select>
<!--<input type="text" name="symtom" placeholder="Search.."/>-->

<br><br><br><br>
<input type="submit" value="Submit"/>

</center>
</form>

</body>
</html>
