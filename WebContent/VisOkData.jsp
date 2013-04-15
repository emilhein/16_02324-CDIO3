<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Data godkendt</title>
</head>
<body>
<%
if (request.getMethod().equals("POST")) { // brugeren har tastet på submit
response.sendRedirect("InputForm.jsp");
}
%>
Den indtastede værdi er godkendt: Du indtastede
<%= request.getParameter("alder_resultat") %> år
<form method="GET" action="InputForm.jsp">
<input type="submit" value="OK">
</form>
</body>
</html>