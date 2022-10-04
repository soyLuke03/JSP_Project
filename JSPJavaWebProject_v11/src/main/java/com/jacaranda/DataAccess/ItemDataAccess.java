package com.jacaranda.DataAccess;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.Locale.Category;

import com.jacaranda.Item.Item;

public class ItemDataAccess {
	private static Connection connection;
	private static Statement instruction;
	private static ResultSet result;
	private LinkedList<Item> itemsList;
	
	public ItemDataAccess() throws SQLException {
		itemsList = new LinkedList<Item>();
		setConnection();
	}
	
	private void setConnection() throws SQLException {
		try {
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/JSP_Project?useSSL=false",
					"administrador", "administrador");
			instruction = connection.createStatement();
		} catch (SQLException e) {
			e.getMessage();
		}
	}
	
	public void getDbItems() {
		try {
			result = instruction.executeQuery("SELECT * FROM Item");
			while(result.next()) {
				Item item = new Item(result.getString("nameItem"), result.getDouble("priceItem"), result.getString("category"));
				System.out.println(item);
				itemsList.add(item);
			}
		} catch (SQLException e) {
			e.getMessage();
		}
	}
}
