<%@include file="header.jsp" %>

<div id="middle">
<h1>SERVICES PAGE</h1>
<form action="" method="post">
            <input type="text" name="t1" />
            <br>
            <input type="submit" name="btnsubmit1" value="Create Cookie" />
            <br>
             <input type="submit" name="btnsubmit2" value="Get Cookie" />
        </form>
        
        <%
           if(request.getParameter("btnsubmit1")!=null)
           {
        	   Cookie obj = new Cookie("ckey",request.getParameter("t1"));
        	   response.addCookie(obj);
        	   obj.setMaxAge(10000);
        	   
           }
          if(request.getParameter("btnsubmit2")!=null)
          {
     	     Cookie arr[] = request.getCookies();
     	     for(int i=0;i<arr.length;i++)
     	     {
     	    	 if(arr[i].getName().equals("ckey"))
     	    	 {
     	    		 out.print(arr[i].getValue());
     	    	 }
     	     }
          }
        
        %>
</div>

<%@include file="footer.jsp" %>
