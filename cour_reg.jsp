<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

   String newCourse = request.getParameter("nc");
   String reg=request.getParameter("reg");
	try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","shamim");
	Statement statement= connection.createStatement();
	String query="INSERT INTO reg_course(course,reg) VALUES ('"+newCourse+"','"+reg+"')";
	statement.executeUpdate(query);
	response.sendRedirect("welcomestudent.html");
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
%>
</body>
</html>
