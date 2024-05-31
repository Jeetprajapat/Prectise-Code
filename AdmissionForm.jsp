<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admission Form</title>
</head>
<body>

<% 
String uname=request.getParameter("unameA");
String password=request.getParameter("passwordA");
String username=(String)request.getParameter("back_username");
String pass=(String)request.getParameter("back_password");
if(username.equals(uname) && pass.equals(password)){
	RequestDispatcher rd = request.getRequestDispatcher("AdmissionData.jsp");
	rd.forward(request, response);
	String name=request.getParameter("username");
	out.print("Student Name : "+name);
	String mname=request.getParameter("mname");
	out.print("Mother's Name : "+mname);
	String fname=request.getParameter("fname");
	out.print("Father's Name : "+fname);
	String dob=request.getParameter("dob");
	out.print("Date of Birth : "+dob);
	String gender=request.getParameter("gender");
	out.print("Gender : "+gender);
	String cnumber=request.getParameter("cnumber");
	out.print("Contect Number : "+cnumber);
	String email=request.getParameter("email");
	out.print("Email ID : "+email);
	String adderss=request.getParameter("adderss");
	out.print("Address : "+adderss);
	String country=request.getParameter("country");
	out.print("Countery : "+country);
	String Hmaeks=request.getParameter("Hmaeks");
	out.print("High School Marks : "+Hmaeks);
	String board=request.getParameter("board");
	out.print("High School Board : "+board);
	String Sname=request.getParameter("Sname");
	out.print("High School Name : "+Sname);
	String tmarks=request.getParameter("tmarks");
	out.print("Intermediat Marks : "+tmarks);
	String tboard=request.getParameter("tboard");
	out.print("Intermediat Board: "+tboard);
	String scname=request.getParameter("scname");
	out.print("Intercollage Name : "+scname);
} 
else{
	out.print("User name and password is incorrect !");
    RequestDispatcher rd = request.getRequestDispatcher("AdmissionForm.html");
	rd.forward(request, response);
	}%>
</body>
</html>