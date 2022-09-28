package com.jacaranda.DataAccess;

import com.jacaranda.User.*;
import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class UserDataAccess {
	private static Connection connection;
	private static Statement instruction;
	private static ResultSet result;
	
	public UserDataAccess() throws SQLException {
		setConnection();
	}
	
	private void setConnection() throws SQLException {
		try {
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/JSP_Project?useSSL=false",
					"administrador", "administrador");
			instruction = connection.createStatement();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
	}
	
	public boolean comprobationUser(User user) throws SQLException, UserException {
		boolean exist = false;
		result = instruction.executeQuery("SELECT * FROM Users WHERE USERNAME = '" + user.getUserName() + "'");
		result.next();
		if ((result.getRow() != 0) && (result.getString("userName").equals(user.getUserName()) && result.getString("password").equals(user.getPassword()))) {
			exist = true;
		} else {
			throw new UserException("El usuario o la contraseña no son correctas.");
		}
		return exist;
	}
	
	public int registerUser(User user) throws UserException {
		int created = 0;
		try {
			result = instruction.executeQuery(
					"SELECT COUNT(USERNAME) AS numUser FROM Users WHERE USERNAME = '" + user.getUserName() + "'");
			result.next();
			if (result.getInt("numUser") == 1) {
				throw new UserException("El usuario ya existe.");
			} else {
				created = instruction.executeUpdate("INSERT INTO Users VALUES('" + user.getName() + "', '" + user.getUserName()
						+ "', '" + user.getPassword() + "', '" + user.getAddress() + "', '" + user.getPhoneNumber() + "', '"
						+ user.getEmail() + "', '" + user.getId() + "')");
			}
		} catch (SQLException e) {
			e.getMessage();
		}
		return created;
	}
	
}
