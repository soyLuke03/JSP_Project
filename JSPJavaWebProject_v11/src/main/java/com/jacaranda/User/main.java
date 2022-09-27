package com.jacaranda.User;

import java.sql.SQLException;

public class main {

	public static void main(String[] args) throws SQLException {
		User u = new User("DummyUser", "DummyUser_00");
			
		if(u.comprobationUser() == true) {
			System.out.println("Existe");
		} else {
			System.out.println("Error");
		}
	}
}
