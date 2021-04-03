<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  isELIgnored = "false"%>

<%@ page import="java.util.*"%>
<%@ page import="com.nagarro.assignment5.Hrlogin.model.Employee" %>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Employee Management System</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<style type="text/css">
		.footer{
		        position: fixed;  
		        left:0px;
		        bottom: 0;  
		        width:100%;
		        padding: 2px;
		        text-align: center;
		        background: #1abc9c;
		        color: white;
		        font-size: 12px;
		        border-style: groove;
		        }
	</style>
</head>

<body>
	<div class="row mx-auto header">
		<h1>Employee Management System</h1>
	</div>
	<div class="row mx-auto ">
		<div class="col-xl-9">
		</div>
		<div class="col-xl-3">
			 Welcome ${username}
		</div>
	</div>
    <div class="container">
        
        <hr>
		
    
    <%
    	Employee item = (Employee) request.getAttribute("employee");
		out.println("<form action='/saveEmployee' method='post'>");
		out.println("<fieldset class='form-group'>");
		out.print("<label>Employee Code</label>");
		out.println("  <b>"+ item.getEmployeeCode()+"</b>");
		out.println("<input type='hidden' name='employeecode' value='"+item.getEmployeeCode()+"'>");
		out.println("<input type='hidden' name='username' value='"+item.getUsername()+"'>");
		out.println("</fieldset>");
		out.println("<fieldset class='form-group'>");
		out.println("<label>Employee Name</label><input type='text'  value='"+item.getEmployeeName()+"' class='form-control' name='employeename'>");
		out.println("</fieldset>");
		out.println("<fieldset class='form-group'>");
		out.println("<label>Location</label><input type='text'  value='"+item.getLocation()+"' class='form-control' name='location' required='required'>");
		out.println("</fieldset>");
		out.println("<fieldset class='form-group'>");
		out.println("<label>Email</label><input type='text'  value='"+item.getEmail()+"' class='form-control' name='email' >");
		out.println("</fieldset>");
		out.println("<fieldset class='form-group'>");
		out.println("<label>Date Of Birth</label><input type='text'  value='"+item.getDateofbirth()+"' class='form-control' name='dateofbirth' >");
		out.println("</fieldset>");
		out.println("<button type='submit' class='btn btn-success' >Save</button>");
		out.println("</form>");
		
	%>
	<a href="/view/${username}"> Back to Employee List</a>
	<hr>
	<div class="footer">
    	made by saurabh.sengar@nagarro.com
    </div>	
    </div>
</body>

</html>