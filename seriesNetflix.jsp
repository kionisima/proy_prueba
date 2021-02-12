<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
    <%@ page import="net.comentariosRealizados.dao.ComentariosRealizadosDao" %>
<%@ page import="net.comentariosRealizados.bean.ComentariosRealizadosBean" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.*" session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Las 5 mejores series de suspenso para ver en Netflix</title>
</head>
<body>
<% if(session.getAttribute("usuario") == null){
		response.sendRedirect("login.jsp");
	}%>
<nav id="button">
<ul>
	<li><a href="index.jsp">Inicio</a></li>
	<li><a href="index.jsp"><%= session.getAttribute("usuario") %></a></li>
	<ul>
	<li><a href="editarPerfil.jsp">Editar perfil</a></li>
	<li><a href="LogoutServlet">Cerrar sesión</a></li>
	</ul>
</ul>
</nav>

</form>


<h1>Las 5 mejores series de suspenso para ver en Netflix</h1>
	<p>	Estas son algunas de las mejores series de suspenso que podes ver en Netflix y para
		todos los gustos. Así que prepará los pochoclos y disfrutá estas series llenas de emociones</p>
	<img src="https://cdn.computerhoy.com/sites/navi.axelspringer.es/public/styles/1200/public/media/image/2019/02/86286ca0260b6fb8d6128c94737916444e6b9925.jpg?itok=Yc2YxTEI" alt="Imagen de la serie Bates Motel" width="400" height="341">
	
	<h2>Breaking Bad</h2>
	<img src="https://images.amcnetworks.com/amc.com/wp-content/uploads/2012/06/BB-S5-Key-Art-2560-v2.jpg" alt="Protagonista de Breaking Bad sentado en una silla rodeado de dinero" width="400" height="341">
	
	<h2>Bates Motel</h2>
	<img src="https://r3.abcimg.es/resizer/resizer.php?imagen=https%3A%2F%2Fstatic1.abc.es%2Fmedia%2Fseries%2F000%2F002%2F952%2Fbates-motel-2.jpg&nuevoancho=620&medio=abc" alt="Norman Bates junto a su madre Norma" width="400" height="341">
	
	<h2>Stranger Things</h2>
	<img src="https://3.bp.blogspot.com/-3-ZuwkkeAwQ/V5kfdDavygI/AAAAAAABQFg/fOWluJVBuXw19LNleTZiN3Jv4cTA6OT4wCEw/s1600/BOOMGERS201607160008STRANGERTHINGS.jpg" alt="Eleven" width="400" height="341">
	
	<h2>Dark</h2>
	<img src="https://static01.nyt.com/images/2017/11/24/arts/24dark/24dark3-superJumbo.jpg" alt="Protagonista de dark en primer plano" width="400" height="341">
	
	<h2>Mindhunter</h2>
	<img src="https://static01.nyt.com/images/2017/10/13/arts/13mindhunterjp/13mindhunter-videoSixteenByNineJumbo1600.jpg" width="400" height="341">
	
<h3>Realizar un comentario</h3>
	<form action="<%= request.getContextPath() %>/ComentariosServlet" method="post">
<p>Usuario: <input type="text" name="usuario" value="<%= session.getAttribute("usuario") %>" readonly></p>
<p><textarea name="comentario" cols="40" rows="10"></textarea></p>
<p><input type="submit" value="Enviar" name="enviar"></p>
</form>

<h3>Comentarios realizados</h3>
<%
	ComentariosRealizadosDao crd = new ComentariosRealizadosDao();
	List<ComentariosRealizadosBean> crb = crd.ComentariosRealizadosBean();
	for(int i = 0; i < crb.size(); i++){
		out.println("Usuario: " + crb.get(i).getUsuario() + "</br>");
		out.println("Comentario: " + crb.get(i).getComentario() + "</br>");
		out.println("<br>");
	}
%>
	
</body>
</html>