<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Data godkendt</title>
</head>
<body>
	<%
	String recept_nr = request.getParameter("Recept_nr_resultat");
	String vare_nr = request.getParameter("Vare_nr_resultat");
	String varenavn = request.getParameter("Varenavn_resultat");
	String nomiel_nettovaegt = request.getParameter("Nomiel_nettovaegt_resultat");
	String tolerance = request.getParameter("Tolerance_resultat");
	String oprettelsesdato = request.getParameter("Oprettelses_dato_resultat");
	%>
	<p>	
		De indtastede værdi er godkendt: Du indtastede: <br>
		Recept nr: <%= recept_nr %> <br>
		Vare nr: <%= vare_nr %> <br>
		Varenavn: <%= varenavn %>	<br>
		Nomiel nettovægt: <%= nomiel_nettovaegt %> <br>
		Tolerance (netto i %): <%= tolerance %>	 <br>
		Tidspunkt for oprettelses: <%= oprettelsesdato %> <br>
		<a href="InputForm.jsp">Link eller knap</a>
	</p>
</body>
</html>
