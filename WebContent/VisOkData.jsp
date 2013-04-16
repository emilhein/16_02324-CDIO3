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
	De indtastede værdi er godkendt: Du indtastede: <br>
	<head>Recept nr: </head><%=request.getParameter("recept_nr_resultat")%> </br><br>
	<head>Vare nr: </head><%=request.getParameter("vare_nr_resultat")%> </br><br>
	<head>Varenavn: </head><%=request.getParameter("varenavn_resultat")%>	 </br><br>
	<head>Nomiel nettovægt: </head><%=request.getParameter("nomiel_nettovægt_resultat")%> </br><br>
	<head>Tolerance (netto i %): </head><%=request.getParameter("tolerence_resultat")%>	 </br><br>
	<head>Oprettelses dato: </head><%=request.getParameter("oprettelses_dato_resultat")%> </br>
	<form method="GET" action="InputForm.jsp">
		<input type="submit" value="OK">
	</form>
</body>
</html>