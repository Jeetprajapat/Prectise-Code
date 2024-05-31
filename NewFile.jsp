<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String username=request.getParameter("login_user_email");
String password=request.getParameter("password");
String login_user_email=request.getParameter("login_username");
String login_password=request.getParameter("login_password");
if(username.equals(login_user_email)&& password.equals(login_password)){
	RequestDispatcher rd = request.getRequestDispatcher("Final_output.jsp");
	request.setAttribute("login_user_email",login_user_email);
	request.setAttribute("login_Password",login_password);	
	rd.forward(request, response);
} 
else{
	out.print("User name and password is incorrect !");
	RequestDispatcher rd = request.getRequestDispatcher("LoginForm.html");
	rd.forward(request, response);
	}%>
%>

</body>
</html>