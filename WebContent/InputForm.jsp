<%!
	String validateNumber(String input, int min, int max, String name) {
		String error = "";
		int number = 0;
		try {
			number = Integer.parseInt(input);
		} catch (Exception e) {
			error = "Input i " + name + " skal være et tal.;";
			return error;
		}
		if (number > max || number < min)
			error = "Input i " + name + " skal mindst være " + min + " og højest være " + max + ".;";
		return error;
	}
	
	String validateNumber2(String input, long min, long max, String name)
	{
		String error = "";
		long number = 0;
		try {
			number = Long.parseLong(input);
		} catch (Exception e) {
			error = "Input i " + name + " skal være et tal separeret med punktum.;";
			return error;
		}
		return error;
	}
	
	String validateWord(String input, int min, int max, String name) {
		String error = "";
		if (input.length() > max || input.length() < min)
			error = "Input i " + name + " skal have en længe på " + min + "-" + max + " tegn.;";
		return error;
	}
	%>
<html>
<head>
<title>Indtastningsformular</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
	<%
		if (request.getMethod().equals("POST")) { // brugeren har tastet på submit
			String Recept_nr = request.getParameter("Recept_nr"), Vare_nr = request.getParameter("Vare_nr"), Varenavn = request.getParameter("Varenavn"), Nomiel_nettovægt = request.getParameter("Nomiel_nettovægt"), Tolerance = request.getParameter("Tolerance");
			
			String error = "" + validateNumber(Recept_nr, 1, 99999999, "Recept nr") + 
					validateNumber(Vare_nr, 1, 99999999, "Vare_nr") + 
					validateWord(Varenavn, 2, 20, "Varenavn") + 
					validateNumber(Nomiel_nettovægt, 50, 6000, "Nomiel_nettovægt") + 
					validateNumber2(Tolerance, 0, 10, "Tolerance");
				//mangler validate for tolerence.
			
			if (error.equals(""))
			{
				java.util.Date dims = new java.util.Date();
				String Oprettelses_dato = dims.getHours() + ":" + dims.getMinutes() + " " + dims.getDate() + "/" + dims.getMonth() + "-" + (dims.getYear() + 1900);
				System.out.print(Recept_nr + "\n" );
				response.sendRedirect("VisOkData.jsp?Recept_nr_resultat=" + Recept_nr +
						"&Vare_nr_resultat=" + Vare_nr +
						"&Varenavn_resultat=" + Varenavn + 
						"&Nomiel_nettovægt_resultat=" + Nomiel_nettovægt + 
						"&Tolerance_resultat=" + Tolerance +
						"&Oprettelses_dato_resultat=" + Oprettelses_dato);
			}
			else
				response.sendRedirect("VisError.jsp?error_resultat=" + error);
		}
	%>
	<form method="POST" action="InputForm.jsp">
		Recept_nr: <input type="text" name="Recept_nr" value=""><br>
		Vare_nr: <input type="text" name="Vare_nr" value=""><br>
		Varenavn: <input type="text" name="Varenavn" value=""><br>
		Nomiel_nettovægt: <input type="text" name="Nomiel_nettovægt" value=""><br>
		Tolerance i procent: <input type="text" name="Tolerance" value=""><br>
		<input type="submit" value="OK">
	</form>
</body>
</html>
