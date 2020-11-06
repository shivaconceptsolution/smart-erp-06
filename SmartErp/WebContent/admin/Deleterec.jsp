<%@page import="DAL.Datahelper"%>
<%@include file="header.jsp" %>
<%@page import="java.sql.*"%>
<div id="middle">
<div class="part1">
<%@include file="sidebar.jsp" %>
</div>

<div class="part2">
<%

//out.print(request.getParameter("q"));
//Class.forName("com.mysql.jdbc.Driver");
//Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/smarterp","root","");
//Statement st = con.createStatement();
//ResultSet res = st.executeQuery("select * from frontdesk where username='"+request.getParameter("q")+"'");
Datahelper.connection();
ResultSet res = Datahelper.selectData("select * from frontdesk where username='"+request.getParameter("q")+"'");
if(res.next())
{

%>
<div style="padding-left:100px;">
<h1>ARE YOU SURE TO DELETE RECORD</h1>
<table>
<form action="../Frontdeskdeleteser" method="post">
<tr><td>USERNAME:-</td><td><input type="text" name="txtuname" value="<%= res.getString(1) %>" readonly="readonly" /></td></tr>
<tr><td>PASSWORD:- </td><td><input type="text" name="txtupass" value="<%= res.getString(2) %>" /></td></tr>
<tr><td>MOBILE:- </td><td><input type="text" name="txtumobile" value="<%= res.getString(3) %>" /></td></tr>
<tr><td>FULLNAME:- </td><td><input type="text" name="txtufname" value="<%= res.getString(4) %>" /></td></tr>
<tr><td></td><td><input type="submit" name="btnupdate" value="Delete" /></td></tr>
 </form>
</table>
</div>
<%
}
Datahelper.closeConnection();
%>

</div>
</div>
<%@include file="footer.jsp" %>
