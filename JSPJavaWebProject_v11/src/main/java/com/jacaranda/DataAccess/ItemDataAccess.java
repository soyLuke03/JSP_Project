package com.jacaranda.DataAccess;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.LinkedList;

import com.jacaranda.Item.Category;
import com.jacaranda.Item.Item;
import com.jacaranda.Item.ItemException;

public class ItemDataAccess {
	private static Connection connection;
	private static Statement instruction;
	private static ResultSet result;
	private LinkedList<Item> itemsList;
	
	public ItemDataAccess() throws SQLException {
		itemsList = new LinkedList<Item>();
		setConnection();
		getDbItems();
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
	
	private void getDbItems() {
		try {
			result = instruction.executeQuery("SELECT * FROM Item");
			while(result.next()) {
				Item item = new Item(result.getString("nameItem"), result.getDouble("priceItem"), result.getString("category"));
				System.out.println(item);
				itemsList.add(item);
			}
		} catch (SQLException e) {
			throw new ItemException("Ha ocurrido un error inesperado.");
		}
	}
	
	public ArrayList<Item> getItemList(Category category) {
		ArrayList<Item> itemArray = new ArrayList<>();
		try {
			result = instruction.executeQuery("SELECT * FROM Item where CATEGORY ='"+category+"';");
			while(result.next()) {
				Item item = new Item(result.getString("nameItem"), result.getDouble("priceItem"),result.getInt("stockItem"), result.getString("category"));
				itemArray.add(item);
			}
		} catch (SQLException e) {
			throw new ItemException("Ha ocurrido un error inesperado.");
		}
		return itemArray;
	}
	
	public void insertItem(String nameItem, Double priceItem, int stock, String category) {
		try {
			result = instruction.executeQuery("insert into Item (nameItem, priceItem, stockItem, category) values ('"+nameItem+"','"+priceItem+"','"+stock+"','"+category+"')");
			
			}
		catch (SQLException e) {
			throw new ItemException("Ha ocurrido un error inesperado.");
		}
	}
	
	public void insertItem(Item item) {
		try {
			result = instruction.executeQuery("insert into Item (nameItem, priceItem, stockItem, category) values ('"
		+item.getNameItem()+"',"+item.getPriceItem()+","+item.getStockItem()+",'"+item.getCategory()+"')");
			
			}
		catch (SQLException e) {
			throw new ItemException("Ha ocurrido un error inesperado.");
		}
	}
}


