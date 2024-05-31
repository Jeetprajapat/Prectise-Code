<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Display Data</title>
</head>
<body>
<%
String name=request.getParameter("username ");
out.print( "Name :-" +name);
String fname=request.getParameter("fname"); 
out.print( "Father's Name :-" +fname);
String mname=request.getParameter("mname"); 
out.print( "Mother's Name :-" +mname);
String dob=request.getParameter("dob");
out.print( "Date of Birth :-" +dob);
String gender=request.getParameter("gender");
out.print( "Gender :-" +gender);
String cnumber=request.getParameter("cnumber");
out.print( "Contect Number :-" +cnumber);
String email=request.getParameter("email"); 
out.print( "Email ID:-" +email);
String address=request.getParameter("address");
out.print( "Address :-" +address);
String country=request.getParameter("country");
out.print( "Country Name :-" +country);
String hmarks=request.getParameter("Hmarks");
out.print( "High School's Marks :-" +hmarks);
String board=request.getParameter("board");
out.print( "Board of High School :-" +board);
String sname=request.getParameter("sname");
out.print( "High School Nmae:-" +sname);
String tmarks=request.getParameter("tmarks");
out.print( "Intermideat's Marks :-" +tmarks);
String tboard=request.getParameter("tboard");
out.print( "Board of Intermideat :-" +tboard);
String scname=request.getParameter("scname");
out.print( " Intermideat School Nmae:-" +scname);
%>
</body>
</html>