<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cambiar contraseña</title>
</head>
<body>
<h1>Cambiar contraseña</h1>

<% if(session.getAttribute("usuario") == null){
		response.sendRedirect("login.jsp");
	}%>
	
<form action="<%=request.getContextPath()%>/EditarClaveServlet" method="post" name="cambio">
	<table>
		<tr>
			<td><label for="clave">Nueva contraseña: </label></td>
			<td><input type="password" id="clave" name="clave"></td>
		</tr>
		<tr>
			<td><label for="clave2">Reingreso de contraseña: </label></td>
			<td><input type="password" id="clave1"></td>
		</tr>
	</table>
<p><input type="submit" value="Enviar" name="enviar"></p>
</form>
</body>
</html>