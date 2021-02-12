<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inicio de sesión</title>
<script>
	function validar(){
	
		var texto;
		var exp = /^[a-zA-Z][0-9]*$/
		var usuario = document.forms["formulario"]["usuario"].value;
		var clave = document.forms["formulario"]["clave"].value;
	
		if(usuario == null || usuario == ""){
			texto = "Usuario incompleto";
			document.getElementById("info").innerHTML = texto;
			return false;
		} else if(usuario.length > 16 ){
			texto = "No existe ningún usuario con más de 16 caracteres";
			document.getElementById("info").innerHTML = texto;
			return false;
		} else if(clave == null || clave == "" || clave2 == null || clave2 == ""){
			texto = "Clave incompleta";
			document.getElementById("info").innerHTML = texto;
			return false;
		} else if(clave.length > 16){
			texto = "No existe ningún usuario con una clave con una clave tan larga";
			document.getElementById("info").innerHTML = texto;
			return false;
		} else if(clave.length < 5){
			texto = "No existe ningún usuario con una clave tan corta";
			document.getElementById("info").innerHTML = texto;
			return false;
		} else {
			texto = "No existe ningun usuario con esos caracteres";
			document.getElementById("info").innerHTML = texto;
			return false;
		}
	}

</script>
</head>
<body>
<h1 style="text-align:center">Iniciar sesión</h1>
<div id="info"></div>
<form action="<%= request.getContextPath() %>/LoginServlet" method="post" name="formulario" onsubmit="return validar();">
	<table>
		<tr>
			<td width="13%"><label for="usuario">Usuario: </label></td>
			<td width="87%"><input type="text" id="usuario" name="usuario"></td>
		</tr>
		<tr>
			<td><label for="clave">Clave: </label></td>
			<td><input type="password" id="clave" name="clave" ></td>
		</tr>
	</table>
<p><input type="submit" value="Enviar" name="enviar"></p>

</form>
<button onclick="location.href='newuser.jsp'">Registrarse</button>
</body>
</html>