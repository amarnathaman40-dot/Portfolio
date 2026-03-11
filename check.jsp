<%
String user = request.getParameter("username");
String pass = request.getParameter("password");

if(user.equals("admin") && pass.equals("admin123"))
{
    response.sendRedirect("admin.jsp");
}
else if(user.equals("student") && pass.equals("student123"))
{
    response.sendRedirect("student.jsp");
}
else
{
%>

<html>
<body style="font-family:Arial;text-align:center;background:#f2f2f2">

<h2 style="color:red">Invalid Login</h2>

<a href="login.jsp">Try Again</a>

</body>
</html>

<%
}
%>