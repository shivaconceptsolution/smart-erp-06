<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">
input
{
width:400px;
height:30px;
margin-top:10px;
}

</style>
</head>
<body>
        <div style="width:500px;height:300px;margin-top:200px; margin-left:500px; border:2px dashed blue;">
           <div style="margin-top:10%; margin-left:10%;">
           <h3>Faculty Login Form</h3>
           <form action="Loginser" method="post">
           <input type="text" name="txtuser" placeholder="enter username" />
           <br>
           <input type="text" name="txtpass" placeholder="enter password" />
           <br>
           <input type="submit" name="btnsubmit" value="Login here" style="background-color:blue;color:white;" />
           
           
           </form>
           
           </div>
        
        </div>
</body>
</html>