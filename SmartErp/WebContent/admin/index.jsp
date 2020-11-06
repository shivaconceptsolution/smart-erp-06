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
           <h3>Admin Login Form</h3>
           <%
           String u="",p="";
           if(request.getCookies()!=null)
           {
         Cookie arr[] = request.getCookies();
   	     for(int i=0;i<arr.length;i++)
   	     {
   	    	 if(arr[i].getName().equals("cuser"))
   	    	 {
   	    		 u=arr[i].getValue();
   	    	 }
   	    	if(arr[i].getName().equals("cpass"))
  	    	 {
  	    		 p=arr[i].getValue();
  	    	 }
   	     }
           }
           %>
           <form action="../Loginser" method="post">
           <input type="text" name="txtuser" placeholder="enter username" value="<%= u %>"/>
           <br>
           <input type="password" name="txtpass" placeholder="enter password" value="<%= p %>" />
           <br>
           <input type="submit" name="btnsubmit" value="Login here" style="background-color:blue;color:white;" />
           <br>
          <span><input type="checkbox" name="chkcookie" value="remember me" style="width:30px;height:30px;" />Remember me</span> 
           
           </form>
           <div style='color:red;padding-top:20px;'>
           <%
             if(request.getParameter("q")!=null)
             {
            	 out.print(request.getParameter("q"));
             }
           
           
           %>
           </div>
           </div>
        
        </div>
</body>
</html>