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
	De indtastede v�rdi er godkendt: Du indtastede: <br>
	Recept nr: <%=request.getParameter("recept_nr_resultat")%> </br><br>
	Vare nr: <%=request.getParameter("vare_nr_resultat")%> </br><br>
	Varenavn: <%=request.getParameter("varenavn_resultat")%>	 </br><br>
	Nomiel nettov�gt: <%=request.getParameter("nomiel_nettov�gt_resultat")%> </br><br>
	Tolerance (netto i %): <%=request.getParameter("tolerence_resultat")%>	 </br><br>
	Oprettelses dato: <%=request.getParameter("oprettelses_dato_resultat")%> </br>
	<form method="GET" action="InputForm.jsp">
		<input type="submit" value="OK">
	</form>
</body>
</html>
