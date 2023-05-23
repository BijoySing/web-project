<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

	
	try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","shamim");
	String query="SELECT course,teacher FROM course";
	Statement statement= connection.createStatement();

	ResultSet set= statement.executeQuery(query);
	//response.sendRedirect("index.html");
	while(set.next())
	{
		String columnData=set.getString("course");
		String te=set.getString("teacher");
		out.println(columnData+"->"+te+"<br>");
		
	}
	
	out.println("<h3>For course registration, Go back</h3> ");
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
%>
</body>
</html>
