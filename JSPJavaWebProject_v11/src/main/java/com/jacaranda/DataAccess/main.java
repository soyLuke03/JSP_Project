package com.jacaranda.DataAccess;

import java.sql.SQLException;

import com.jacaranda.Item.Category;
import com.jacaranda.User.User;
import com.jacaranda.User.UserException;

public class main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		try {
			ItemDataAccess ida = new ItemDataAccess();
			
			ida.getItemList(Category.Appliances);
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
	}

}
