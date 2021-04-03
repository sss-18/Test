<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  isELIgnored = "false"%>

<%@ page import="java.util.*"%>
<%@ page import="com.nagarro.assignment5.Hrlogin.model.Hr" %>
<head>
    <meta charset="ISO-8859-1">
    <title>Login Page</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>

<body>
    <div class="container">
        <h1>Login Page</h1>
        <hr>
		
    
    <%
 
		out.println("<form action='/loginUp' method='post'>");
		out.println("<fieldset class='form-group'>");
		out.print("<label>Username</label>");
		out.println("<input type='text' name='username' placeholder='Enter a valid username' required='required'>");
		out.println("</fieldset>");
		out.println("<fieldset class='form-group'>");
		out.println("<label>Password</label><input type='password' placeholder='Enter Password'  class='form-control' name='pass' required='required'>");
		out.println("</fieldset>");
		
		out.println("<button type='submit' class='btn btn-success' >Login</button>");
		out.println("</form>");
		
	%>
	</div>
</body>

</html>