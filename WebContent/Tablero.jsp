<%@page import="paquetePiezas.Ficha"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AJEDREZ</title>

<script type="text/javascript" language="JavaScript">
function GuardarPartida(){
	var formuMenu=document.getElementById("formMover");
	formuMenu.action="ServletGuardar";
	formuMenu.submit();	
}

function Move(){
	
	var formuMenu=document.getElementById("formMover");
	formuMenu.action="ServletMover";
	formuMenu.submit();
	
}

</script>

</head>
<body background="tablero.jpg">

<table border="3" style="
	position: absolute;
	top: 50%; 
  	left: 60%;
  	transform: translate(-50%, -50%);
  	font-size: 200%;
  	"
  >

<tr>
<td>  </td>
<td>A</td>
<td>B</td>
<td>C</td>
<td>D</td>
<td>E</td>
<td>F</td>
<td>G</td>
<td>H</td>
</tr>
<% 	
	Ficha[][] tablero=new Ficha[9][9];
	tablero=(Ficha[][])request.getSession().getAttribute("Tablero");
	for(int i=1;i<9;i++)
	{
		out.println("<tr>");
		for(int j=0;j<9;j++)
		{
			if(j==0)
			{
				out.println("<td>");
				out.println(i);
				out.println("</td>");
			}
			else
			{
			if(tablero[i][j]!=null)
			{
			out.println("<td>");
			out.println(tablero[i][j].getApodo().toString());
			out.println("</td>");
			}
			else
			{
				out.println("<td>");
				out.println("<p>   </p>");
				out.println("</td>");
			}
			}
		}
		out.println("</tr>");
	}

%>

</table>


<form name="formMover" id="formMover" method="POST" action=""
style="
	position: absolute;
  top: 50%; 
  left: 15%;
  transform: translate(-50%, -50%);
  font-size: 150%;" >
<table>
<tr>
<td colspan="2" align="center">Mover desde: </td>
</tr>
<tr>
<td>Fila numero: </td>
<td><input type="text" name="filaAnt" id="filaAnt"></td>
</tr>
<tr>
<td>Columna letra: </td>
<td><input type="text" name="colAnt" id="colAnt"></td>
</tr>
<tr>
<td colspan="2" align="center">Mover hasta: </td>
</tr>
<tr>
<td>Fila numero: </td>
<td><input type="text" name="filaDesp" id="filaDesp"></td>
</tr>
<tr>
<td>Columna letra: </td>
<td><input type="text" name="colDesp" id="colDesp"></td>
</tr>
<tr>
<td><input type="button" value="Mover" onclick="Move()" ></td>
<td><input type="button" value="Guardar" onclick="GuardarPartida()" ></td>
</tr>

</table>
</form>
<table name="juga" id="juga" style="
	position: absolute;
  top: 25%; 
  left: 15%;
  transform: translate(-50%, -50%);">
<tr>
<td>
<h1 style="font: arial 200%">
<%
if(((Boolean)request.getSession().getAttribute("Turno")).booleanValue())
{
	out.println(((String[])request.getSession().getAttribute("Jugadores"))[0]);
}
else
{
	out.println(((String[])request.getSession().getAttribute("Jugadores"))[1]);
}

  %>
</h1>
</td>
</tr>
</table>

</body>
</html>