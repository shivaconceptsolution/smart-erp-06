<%@include file="header.jsp" %>
<div id="middle">
<div class="part1">
<%@include file="sidebar.jsp" %>
</div>

<div class="part2" >
<div style="padding-left:100px;">
<h1>ADD Front-desk form</h1>

<br><br>
<form action="../Frontdeskser" method="post">
<input type="text" name="txtuname" placeholder="enter username" required/>
<br><br>
<input type="password" name="txtupass" placeholder="enter password" required />
<br><br>
<input type="text" name="txtumobile" placeholder="enter mobileno" required />
<br><br>
<input type="text" name="txtfname" placeholder="enter fullname" required/>
<br><br>
<input type="submit" name="btnsubmit" value="ADD" />
</form>
<%
if(request.getParameter("q")!=null)
{
	out.print(request.getParameter("q"));
}


%>


</div>
</div>
</div>
<%@include file="footer.jsp" %>
