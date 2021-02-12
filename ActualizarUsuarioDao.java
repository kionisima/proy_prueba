package net.editarUsuario.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import net.editarUsuario.model.ActualizarUsuario;

public class ActualizarUsuarioDao {
	
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
	
	public boolean ActualizarUsuarioDao (ActualizarUsuario ActualizarUsuario) {
		
		instruccionSql = "UPDATE usuarios SET usuario=? WHERE usuario=?";
		
		try {
			miStatement = connection.prepareStatement(instruccionSql);
			miStatement.setString(1, ActualizarUsuario.getUsuario());
			
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
