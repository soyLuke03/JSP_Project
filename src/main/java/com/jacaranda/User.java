package com.jacaranda;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity (name = "USERS")
public class User {
	
	@Id
	private String name;
	private String pass;

	public User() {
		
	}

	public User(String name, String pass) {

		this.name = name;
		this.pass = pass;
	}

}
