<%@ page import="net.comentariosRealizados.dao.ComentariosRealizadosDao" %>
<%@ page import="net.comentariosRealizados.bean.ComentariosRealizadosBean" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Comentarios realizados</title>
</head>
<body>
<% if(session.getAttribute("usuario") == null){
		response.sendRedirect("login.jsp");
	}%>
<h1 align="center">Comentarios realizados</h1>
<form action="<%= request.getContextPath() %>/LogoutServlet" method="post">
	<input type="submit" value="Cerrar sesion">
</form>
<%
	ComentariosRealizadosDao crd = new ComentariosRealizadosDao();
	List<ComentariosRealizadosBean> crb = crd.ComentariosRealizadosBean();
	for(int i = 0; i < crb.size(); i++){
		out.println("Usuario: " + crb.get(i).getUsuario() + "</br>");
		out.println("Comentario: " + crb.get(i).getComentario() + "</br>");
		out.println("<br>");
	}
%>
<div align="center">
<button onclick="location.href='comentarios.jsp'">Realizar otro comentario</button>
</div>
</body>
</html>