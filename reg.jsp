<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String un=request.getParameter("un");
	String pwd=request.getParameter("pwd");
	String reg=request.getParameter("reg");
	String typ=request.getParameter("typ");
	try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","shamim");
	Statement statement= connection.createStatement();
	String query="INSERT INTO user (name, password, reg,type) VALUES ('"+un+"','"+pwd+"','"+reg+"','"+typ+"')";
	statement.executeUpdate(query);
	response.sendRedirect("index.html");
	out.println("fine");
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
%>
</body>
</html>