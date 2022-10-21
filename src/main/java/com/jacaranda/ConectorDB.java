package com.jacaranda;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConectorDB {
	
	private static Connection conector = null;
	
	public static Connection getConnection() throws SQLException, ClassNotFoundException {
		
		if (conector == null) {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conector = DriverManager.getConnection("jdbc:mysql://localhost:3306/JSP_Project?useSSL=false",
			                                        "administrador", "administrador");
		}
		return conector;
	}
	
}
