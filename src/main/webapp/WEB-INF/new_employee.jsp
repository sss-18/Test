<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  isELIgnored = "false"%>

<%@ page import="java.util.*"%>
<%@ page import="com.nagarro.assignment5.Hrlogin.model.Employee" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		<h1>Add new Employee</h1>
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
    	String username = (String) request.getAttribute("username");
		out.println("<form action='/saveNewEmployee' method='post'>");
		out.println("<fieldset class='form-group'>");
		out.print("<label>Employee Code  </label>");
		out.println("<input type='text' name='employeecode' placeholder='Enter a valid Employee Code' required='required'>");
		out.println("</fieldset>");
		out.println("<input type='hidden' name='username' value='"+username+"'");
		out.println("<fieldset class='form-group'>");
		out.println("<label>Employee Name</label><input type='text' placeholder='Enter Employee Name'  class='form-control' name='employeename' required='required'>");
		out.println("</fieldset>");
		out.println("<fieldset class='form-group'>");
		out.println("<label>Location</label><input type='text' placeholder='Enter Location'  class='form-control' name='location' required='required'>");
		out.println("</fieldset>");
		out.println("<fieldset class='form-group'>");
		out.println("<label>Email</label><input type='text'  placeholder='Enter Employee Email' class='form-control' name='email' required='required'>");
		out.println("</fieldset>");
		out.println("<fieldset class='form-group'>");
		out.println("<label>Date Of Birth</label><input type='text' placeholder='Enter Employee Date of Birth' class='form-control' name='dateofbirth' required='required' >");
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