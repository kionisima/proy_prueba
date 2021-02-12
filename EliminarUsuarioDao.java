package net.eliminarUsuario.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import net.login.bean.LoginBean;
import net.login.dao.LoginDao;

public class EliminarUsuarioDao {
	
	Connection connection = getConexion();
	PreparedStatement miStatement;
	boolean result = false;
	String instruccionSql;
	
	public Connection getConexion() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/pagina", "root", "root");
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
		return connection;
	}
	
	public boolean EliminarUsuario (LoginBean LoginBean) {
		
		instruccionSql = "DELETE FROM usuarios WHERE usuario=? AND clave=?";
		
		try {
			miStatement = connection.prepareStatement(instruccionSql);
			miStatement.setString(1, LoginBean.getUsuario());
			miStatement.setString(2, LoginBean.getClave());
			
			int i = miStatement.executeUpdate();
			
			if(i == 1) {
				result = true;
			} else {
				result = false;
			}

		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}

}
