<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String student_reg= request.getParameter("student_reg");
	try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","shamim");
	String query="SELECT course,reg from reg_course";
	Statement statement= connection.createStatement();

	ResultSet set= statement.executeQuery(query);
	//response.sendRedirect("index.html");
	while(set.next())
	{
		String te=set.getString("course");
		String course=set.getString("reg");
		if(te.equals(student_reg))
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