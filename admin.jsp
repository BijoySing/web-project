<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String teacher=request.getParameter("teacher");
	String course=request.getParameter("course");

	try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","shamim");
	Statement statement= connection.createStatement();
	String query="INSERT INTO course (course,teacher) VALUES ('"+course+"','"+teacher+"')";
	statement.executeUpdate(query);
	response.sendRedirect("welcomeadmin.html");
	out.println("fine");
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
%>
</body>
</html>