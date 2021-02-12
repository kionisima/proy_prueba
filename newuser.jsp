<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="net.registro.controller.RegistroServlet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registrarse</title>
<script type="text/javascript">

	function validar(){
		
		var texto;
		var exp = /^[a-zA-Z][0-9]*$/
		var usuario = document.forms["formulario"]["usuario"].value;
		var email = document.forms["formulario"]["email"].value;
		var clave = document.forms["formulario"]["clave"].value;
		var clave2 = document.forms["formulario"]["clave2"].value;
		
		if(usuario == null || usuario == ""){
			texto = "Usuario incompleto";
			document.getElementById("info").innerHTML = texto;
			return false;
		} else if(usuario.length > 16){
			texto = "El usuario es muy largo. El máximo son 16 caracteres";
			document.getElementById("info").innerHTML = texto;
			return false;
		} /*else if(!exp.test(usuario)){
				texto ="El usuario solo puede contener letras y números";
				document.getElementById("info").innerHTML = texto;
				return false;
		}*/ else if(clave == null || clave == "" || clave2 == null || clave2 == ""){
			texto = "Clave incompleta";
			document.getElementById("info").innerHTML = texto;
			return false;
		} else if(clave != clave2){
			texto = "Las claves no coinciden";
			document.getElementById("info").innerHTML = texto;
			return false;
		} else if(clave.length > 16){
			texto = "Clave muy larga. El máximo son 16 caracteres";
			document.getElementById("info").innerHTML = texto;
			return false;
		} else if(clave.length < 5){
			texto = "Clave muy corta. Mínimo 5 caracteres";
			document.getElementById("info").innerHTML = texto;
			return false;
		} else if(email == "" || email == null){
			texto = "Ingresar un email";
			document.getElementById("info").innerHTML = texto;
			return false;
		} else if(email.length > 64){
			texto = "El email es muy largo. El máximo son 64 caracteres";
			document.getElementById("info").innerHTML = texto;
			return false;
		} else if(!expEmail.test(email)){
			texto = "Escribir un email válido";
			document.getElementById("info").innerHTML = texto;
			return false;
		}
		
	}
		
</script>
</head>
<body>
<h1 style="text-align:center">Nuevo usuario</h1>
<div id="info"></div>
<form action="<%= request.getContextPath() %>/RegistroServlet" name="formulario" method="post" onsubmit="return validar();">
	<table>
		<tr>
			<td><label for="usuario">Usuario: </label>
			<td><input type="text" id="usuario" name="usuario"></td>
		</tr>
		<!-- <tr>
			<td><label for="email">Correo electronico: </label>
			<td><input type="email" id="email" name="email"></td>
		</tr> -->
		<tr>
			<td><label for="clave">Clave: </label>
			<td><input type="password" id="clave" name="clave"></td>
		</tr>
		<tr>
			<td><label for="clave2">Reingreso de clave: </label>
			<td><input type="password" id="clave2"></td>
		</tr>
	</table>
<p><input type="submit" value="Enviar" name="enviar"></p>
</form>
</body>
</html>