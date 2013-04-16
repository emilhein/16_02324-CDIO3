<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
String recept_nr=request.getParameter("recept_nr_resultat");
String vare_nr=request.getParameter("vare_nr_resultat");
String varenavn=request.getParameter("varenavn_resultat");
String nomiel_nettoveagt=request.getParameter("nomiel_nettovægt_resultat");
String tolerance=request.getParameter("tolerence_resultat");
String oprettelsesdato=request.getParameter("oprettelses_dato_resultat");

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Data godkendt</title>
</head>
<body>
	
	De indtastede værdi er godkendt: Du indtastede: <br>
	Recept nr: <%= recept_nr %> <br>
	Vare nr: <%= vare_nr %> <br>
	Varenavn: <%= varenavn %>	<br>
	Nomiel nettovægt: <%= nomiel_nettoveagt %> <br>
	Tolerance (netto i %): <%= tolerance %>	 <br>
	Oprettelses dato: <%= oprettelsesdato %> <br>
	<a href="InputForm.jsp">Link eller knap</a>
</body>
</html>
