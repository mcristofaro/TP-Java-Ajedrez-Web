<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="login.jpg">

<h1 style="position: absolute;
  top: 5%; 
  left: 50%;
  transform: translate(-50%, -50%);
  font-size: 700%"> LOGIN
</h1>
<form action="ServletEligeJugadores" method="POST" id="formMenu" style="text-align: center">
<table style="
	position: absolute;
  top: 50%; 
  left: 15%;
  transform: translate(-50%, -50%);
  font-size: 200%">

<tr>
<td ><p style="font-color:red">DNI Jugador 1: </p></td>
<td><input type="text" name="jugador1" id="jugador1"></td>
</tr>
<tr>
<td><p>DNI Jugador 2:</p></td>
<td><input type="text" name="jugador2" id="jugador2"></td>
</tr>
<tr>
<td colspan="2"><input type="submit" value="Aceptar" style="font:80% arial" ></td>

</tr>
</table>
</form>

</body>
</html>