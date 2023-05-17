<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String name= request.getParameter("course_list");
	try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","shamim");
	String query="SELECT course,teacher FROM course";
	Statement statement= connection.createStatement();

	ResultSet set= statement.executeQuery(query);
	//response.sendRedirect("index.html");
	while(set.next())
	{
		String te=set.getString("teacher");
		String course=set.getString("course");
		if(te.equals(name))
			{
			out.println(course+"<br>");
			}
		
	}
	
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
%>
</body>
</html>