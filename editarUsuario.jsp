<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cambiar nombre de usuario</title>
</head>
<body>
<h1>Cambiar nombre de usuario</h1>
<% if(session.getAttribute("usuario") == null){
		response.sendRedirect("login.jsp");
	}%>
	
<form>
	<table>
		<tr>
			<td width="13%"><label for="usuario">Usuario actual: </label></td>
			<td width="87%"><input type="text" id="usuario" name="usuario" value="<%= session.getAttribute("usuario") %>" readonly></td>
		</tr>
		<tr>
			<td width="13%"><label for="usuario">Nuevo usuario: </label></td>
			<td width="87%"><input type="text" id="usuario" name="usuario"></td>
		</tr>
	</table>
<p><input type="submit" value="Enviar" name="enviar"></p>
</form>
</body>
</html>