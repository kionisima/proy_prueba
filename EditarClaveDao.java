package net.editarClave.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import net.editarClave.model.EditarClave;

public class EditarClaveDao {
	
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
	
	public boolean EditarClaveDao (EditarClave EditarClave) {
		
		instruccionSql = "UPDATE usuarios SET clave=? WHERE usuario=?";
		
		try {
			miStatement = connection.prepareStatement(instruccionSql);
			miStatement.setString(1, EditarClave.getClave());
			
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
