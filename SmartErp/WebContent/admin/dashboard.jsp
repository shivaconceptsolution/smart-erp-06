<%@include file="header.jsp" %>
<div id="middle">
<div class="part1">
<%@include file="sidebar.jsp" %>
</div>

<div class="part2">
<h1>Welcome  <%= session.getAttribute("aid") %></h1>
</div>
</div>
<%@include file="footer.jsp" %>
