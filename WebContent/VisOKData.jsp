<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Data godkendt</title>
</head>
<body>
<%
if (request.getMethod().equals("POST")) { // brugeren har tastet p� submit
response.sendRedirect("InputForm.jsp");
}
%>
Den indtastede v�rdi er godkendt: Du indtastede
<%= request.getParameter("alder_resultat") %> �r
<form method="GET" action="InputForm.jsp">
<input type="submit" value="OK">
</form>
</body>
</html>