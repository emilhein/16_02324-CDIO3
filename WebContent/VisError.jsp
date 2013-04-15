<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<title>Fejl formular</title>
<body>
Fejl under indtastning :
<% 
try{
String error = request.getParameter("error_resultat");
String[] parts = error.split(";");
String part1 = parts[0];
String part2 = parts[1];
String part3 = parts[2];
String part4 = parts[3];
String part5 = parts[4];
String part6 = parts[5];

for(int i=0; i<parts.length;i++)
parts[i].toString();	
} catch (Exception e){}

%>
<form method="GET" action="InputForm.jsp">
<input type="submit" value="OK">
</form>
</body>
</html>