package com.jacaranda.User;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class User {
	private String userName;
	private String password;
	private String name;
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

	public User(String name, String userName, String password, String address, String phoneNumber, String id, String email)
			throws SQLException {
		super();
		this.name = name;
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
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/JSP_Project?useSSL=false",
					"administrador", "administrador");
			instruction = connection.createStatement();
			this.conect = true;
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
	}

	public boolean comprobationUser() throws SQLException {
		boolean exist = false;
		result = instruction.executeQuery("SELECT * FROM Users WHERE USERNAME = '" + this.userName + "'");
		result.next();
		if (result.getString("userName").equals(this.userName) && result.getString("password").equals(this.password)) {
			exist = true;
		}
		return exist;
	}

	public boolean registerUser() throws UserException {
		boolean created = false;
		try {
			result = instruction.executeQuery(
					"SELECT COUNT(USERNAME) AS numUser FROM Users WHERE USERNAME = '" + this.userName + "'");
			if (result.getInt("numUser") == 1) {
				throw new UserException("El usuario ya existe.");
			} else {
				result = instruction.executeQuery("INSERT INTO Users VALUES('" + this.name + "', '" + this.userName
						+ "', '" + this.password + "', '" + this.address + "', '" + this.phoneNumber + "', '"
						+ this.email + "', '" + this.id + "')");
				created = true;
			}
		} catch (SQLException e) {
			e.getMessage();
		}
		return created;
	}

}
