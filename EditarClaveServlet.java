package net.editarClave.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.editarClave.dao.EditarClaveDao;
import net.editarClave.model.EditarClave;
import net.login.bean.LoginBean;
import net.login.dao.LoginDao;

/**
 * Servlet implementation class EditarClaveServlet
 */
@WebServlet("/EditarClaveServlet")
public class EditarClaveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	LoginBean lb = new LoginBean();
	LoginDao ld = new LoginDao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditarClaveServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String clave = request.getParameter("clave");

		
		request.getRequestDispatcher("cambioExitoso.jsp").forward(request, response);
	}

}
