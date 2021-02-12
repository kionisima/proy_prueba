<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Editar perfil</title>
</head>
<body>
<h1>Editar datos del perfil</h1>
<% if(session.getAttribute("usuario") == null){
		response.sendRedirect("login.jsp");
	}%>

<p>Usuario: <%= session.getAttribute("usuario") %> </p>

<button onclick="location.href='editarUsuario.jsp'">Cambiar nombre de usuario</button>
<button onclick="location.href='editarClave.jsp'">Cambiar contraseña</button>
<button onclick="location.href='eliminarUsuario.jsp'">Eliminar usuario</button>
</body>
</html>