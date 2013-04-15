<%!String validate (String input) {
String error = "";
int alder = 0;try {
alder = Integer.parseInt(input);
} catch (Exception e) {
error = error +"Din alder skal være et tal";
}
if (alder > 121||alder<1)
error = error + " Din alder skal være mellem 1 og 120 år";
return error;
}%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<title>Indtastningsformular</title>
<body>
<%
if (request.getMethod().equals("POST")) { // brugeren har tastet på submit
String alder = request.getParameter("alder");
String error = validate(alder);
if (error.equals(""))
{
System.out.print(alder);
response.sendRedirect("VisOKData.jsp?alder_resultat="+alder);
}
else
response.sendRedirect("VisError.jsp?error_resultat="+error);
}
%>
<form method="POST" action="InputForm.jsp">
Alder:
<input type="text" name="alder" value="Indtast din alder her">
<input type="submit" value="OK">
</form>
</body>
</html>