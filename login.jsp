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
	String typ=request.getParameter("typ");
	try{
		int flag=0;
		String type;
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","shamim");
	Statement statement= connection.createStatement();
	ResultSet set = statement.executeQuery("SELECT * FROM user");
	while(set.next())
	{
		if(un.equals(set.getString(2)) && pwd.equals(set.getString(3)))
				{
			   if (typ.equals(set.getString(5)) && typ.equals("student")) {
			        flag = 1;
			    }
			    if (typ.equals(set.getString(5)) && typ.equals("teacher")) {
			        flag = 2;
			    }
			    if (typ.equals(set.getString(5)) && typ.equals("admin")) {
			        flag = 3;
			    }

					
				}
	}
	if(flag==1)
	{
		
		response.sendRedirect("welcomestudent.html");
	}
	if(flag==2)
	{
		
		response.sendRedirect("welcometeacher.html");
	}
	if(flag==3)
	{
		
		response.sendRedirect("welcomeadmin.html");
	}
	else
	{
		response.sendRedirect("log.html");
	}

	}
	catch(Exception e)
	{
		System.out.println(e);
	}
%>
</body>
</html>
