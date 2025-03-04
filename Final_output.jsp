<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
		 body 
{
  font-family:Arial; 
  background: -webkit-linear-gradient(to right, #155799, #159957); 
  background: linear-gradient(to right, #155799, #159957); 
  color:whitesmoke;
}
input[type=text], input[type=password]{
    width: 100%;
    margin: 10px 0;
    border-radius: 5px;
    padding: 15px 18px;
    box-sizing: border-box;                     
  }
  button {
    background-color: #030804;
    color: white;
    padding: 14px 20px;
    border-radius: 5px;
    margin: 7px 0;
    width: 100%;
    font-size: 18px;
  }

button:hover {
    opacity: 0.6;
    cursor: pointer;
  }
  body 
{
  font-family:sans-serif; 
  background: -webkit-linear-gradient(to right, #155799, #159957); 
  background: linear-gradient(to right, #155799, #159957); 
  color:whitesmoke;
}


h1{
    text-align: center;
}


form{
    width:35rem;
    margin: auto;
    color:whitesmoke;
}

input{
    width: 100%;
    margin: 10px 0;
    border-radius: 5px;
    padding: 15px 18px;
    box-sizing: border-box;
  }
  button {
    background-color: #030804;
    color: white;
    padding: 14px 20px;
    border-radius: 5px;
    margin: 7px 0;
    width: 100%;
    font-size: 18px;
  }

button:hover {
    opacity: 0.6;
    cursor: pointer;
  }
  form{
    width:35rem;
    margin: auto;
    color:whitesmoke;
    backdrop-filter: blur(16px) saturate(180%);
    -webkit-backdrop-filter: blur(16px) saturate(180%);
    background-color: rgba(11, 15, 13, 0.582);
    border-radius: 12px;
    border: 1px solid rgba(255, 255, 255, 0.125);
}
           
span.forgotpsd a {
    float: right;
    color: whitesmoke;
    padding-top: 16px;
  }


  @media screen and (max-width: 600px) {
  form{
    width: 25rem;
  }

}

@media screen and (max-width: 400px) {
  form{
    width: 20rem;
  }
}
body 
{
  font-family:sans-serif; 
  background: -webkit-linear-gradient(to right, #155799, #159957);  
  background: linear-gradient(to right, #155799, #159957); 
  color:whitesmoke;
}


h1{
    text-align: center;
}


form{
    width:35rem;
    margin: auto;
    color:whitesmoke;
    backdrop-filter: blur(16px) saturate(180%);
    -webkit-backdrop-filter: blur(16px) saturate(180%);
    background-color: rgba(11, 15, 13, 0.582);
    border-radius: 12px;
    border: 1px solid rgba(255, 255, 255, 0.125);
    padding: 20px 25px;
}

input[type=text], input[type=password]{
    width: 100%;
    margin: 10px 0;
    border-radius: 5px;
    padding: 15px 18px;
    box-sizing: border-box;
  }

button {
    background-color: #030804;
    color: white;
    padding: 14px 20px;
    border-radius: 5px;
    margin: 7px 0;
    width: 100%;
    font-size: 18px;
  }

button:hover {
    opacity: 0.6;
    cursor: pointer;
}

span.forgotpsd a {
    float: right;
    color: whitesmoke;
    padding-top: 16px;
  }
  @media screen and (max-width: 600px) {
    form{
      width: 25rem;
    }
  }
  
  @media screen and (max-width: 400px) {
    form{
      width: 20rem;
    }
  }
	 </style>
	 
</head>
<body>
<%
String username=(String)request.getAttribute("login_user_email");
String pass=(String)request.getAttribute("login_Password");
%>
<center><h1>Admission Form</h1></center>
     <div style="margin: 50px;padding: 10px; text-align: center;">
     <form method="POST" action="AdmissionForm.jsp">
       <fieldset>
         <legend>Login Details</legend>
         <input type="hidden" value="<%= username%>" name="back_username">
            <input type="hidden" value="<%= pass%>" name="back_password">
         <table>
             <tr>
                <td>Username: </td>
                <td><input type="text" placeholder="Enter username" name="unameA"/></td>
             </tr>
             <tr>
                <td>Password: </td>
                <td><input type="password" name="passwordA"/></td>
             </tr>  
         </table>
       </fieldset>
       <fieldset>
         <legend>Personal Details</legend>
         <table>
            <tr>
		<td>Name: </td>
		<td><input type="text" placeholder="Enter Name" name="username"/></td>
            </tr>
            <tr>
		<td>Mother's Name</td>
		<td><input type="text" placeholder="Enter Mother's Name" name="mname"/></td>
	    </tr>
            <tr>
		<td>Father's Name</td>
		<td><input type="text" placeholder="Enter Father's Name" name="fname"/></td>
	    </tr>
            <tr>
		<td>Date of Birth</td>
		<td><input type="date" name="dob"/></td>
	    </tr>
            <tr>
		<td>Gender</td>
		<td>
		    <input type="radio" name="gender" value="male">Male</input>
		    <input type="radio" name="gender" vale="female">Female</input>
                </td>
	    </tr>
         </table> 
       </fieldset>
        <fieldset>
         <legend>Contact Details</legend>
          <table>
            <tr>
		<td>Contact Number: </td>
		<td><input type="tel" placeholder="+91" name="cnumber"/></td>
            </tr>
            <tr>
		<td>Email ID: </td>
		<td><input type="email" placeholder="xyz@gmail.com" name="email"/></td>
            </tr>
            <tr>
		<td>Address</td>
		<td><textarea rows="5" placeholder="Enter the Address" cols="30" name="adderss"></textarea></td>
            </tr>
            <tr>
		<td>Country: </td>
		<td>
                   <select name="country">
			<option>India</option>
			<option>USA</option>
			<option>UK</option>
			<option>Australia</option>
                   </select>
                </td>
            </tr>
          </table>

       </fieldset> 
       <fieldset>
         <legend>Academic Details</legend>
         <table>
           <tr>
             <td>10<sup>th</sup> Class Marks:</td>
             <td><input type="number" name="Hmaeks"/></td>
             <td>Board: </td>
             <td><input type="text" name="board"/></td>
             <td>School Name: </td>
             <td><input type="text" name="Sname"/></td>
           </tr>
           <tr>
           <tr>
             <td>12<sup>th</sup> Class Marks:</td>
             <td><input type="number" name="tmarks"/></td>
             <td>Board: </td>
             <td><input type="text" name="tboard"/></td>
             <td>School Name: </td>
             <td><input type="text" name="scname"/></td>
           </tr>
           </tr>
         </table>
       </fieldset>  
       <div style="margin-top: 20px; padding: 10px;text-align: center;">
           <Button onclick="alert('Form Submitted');">Submit</button>
       </div>  
     </form>
     </div>
</body>
</html>