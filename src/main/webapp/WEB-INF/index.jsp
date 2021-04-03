<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  isELIgnored = "false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.nagarro.assignment5.Hrlogin.model.Employee" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
		<h1>Employees List</h1>
	</div>
	<div class="row mx-auto ">
		<div class="col-xl-9">
		</div>
		<div class="col-xl-3">
			 Welcome ${username}
		</div>
	</div>
	<div class="container my-2">
        

        <a href="/showNewEmployeeForm/${username}" class="btn btn-primary btn-sm mb-3"> Add Employee </a>

        <table border="1" class="table table-striped table-responsive-md">
            <thead>
                <tr>
                	<th>Employee Code</th>
                    <th>Employee Name</th>
                    <th>Employee Location</th>
                    <th>Employee Email</th>
                    <th>Date of Birth</th>
                    <th> Actions </th>
                </tr>
            </thead>
            <tbody>
            	<c:forEach items = "${ListEmployees}" var = "info">
				<tr >
  					<td>${info.getEmployeeCode()}</td>
  					<td>${info.getEmployeeName()}</td>
  					<td>${info.getLocation()}</td>
  					<td>${info.getEmail()}</td>
  					<td>${info.getDateofbirth()}</td>
  					<td><a href="${path}/showFormForUpdate/${info.getEmployeeCode()}" class="btn btn-primary">Update
  					</a>
  					</td>
				</tr>
  			</c:forEach>
            </tbody>
        </table>
    
    
	<div class="footer">
    	made by saurabh.sengar@nagarro.com
    </div>	
   </div>
    
</body>
</html>