<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import = "jakarta.servlet.RequestDispatcher" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Form</title>
</head>
<body>
<%
String registration_user_email=request.getParameter("registration_user_email");
String registration_Password=request.getParameter("Registration_Password");
String reenter_Password=request.getParameter("reenter_password");
if(registration_Password.equals(reenter_Password)){
	RequestDispatcher rd = request.getRequestDispatcher("LoginForm.jsp");
	request.setAttribute("registration_user_email",registration_user_email);
	request.setAttribute("registration_Password",registration_Password);
	rd.forward(request, response);
} 
else{
	out.print("User password is incorrect !");
	RequestDispatcher rd = request.getRequestDispatcher("RegistrationForm.html");
	rd.forward(request, response);
	}%>
</body>
</html>