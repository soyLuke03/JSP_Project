package com.jacaranda.User;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class User {
	private String userName;
	private String password;
	private String address;
	private String phoneNumber;
	private String id;
	private String email;
	private static Connection connection;
	private static Statement instruction;
	private static ResultSet result;
	private static boolean conect;
	
	public User(String userName, String password) throws SQLException {
		this.userName = userName;
		this.password = password;
		setConnection();
	}
	
	public User(String userName, String password, String address, String phoneNumber, String id, String email) throws SQLException {
		super();
		this.userName = userName;
		this.password = password;
		this.address = address;
		this.phoneNumber = phoneNumber;
		this.id = id;
		this.email = email;
		setConnection();
	}

	private void setConnection() throws SQLException {
		try {
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/JSP_Project?useSSL=false", "administrador", "administrador");
			instruction = connection.createStatement();
			this.conect = true;
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
	}
	
	public boolean comprobationUser() throws SQLException {
		boolean exist = false;
		result = instruction.executeQuery("SELECT * FROM Users WHERE USERNAME = 'DummyUser'");
		result.next();
		if(result.getString("userName").equals(this.userName) && result.getString("password").equals(this.password)) {
			exist = true;
		}
		return exist;
	}
	
	
	
}
