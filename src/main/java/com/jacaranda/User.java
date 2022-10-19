package com.jacaranda;

import java.util.Objects;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity (name="USERS")
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	@Override
	public int hashCode() {
		return Objects.hash(name, pass);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		User other = (User) obj;
		return Objects.equals(name, other.name) && Objects.equals(pass, other.pass);
	}

	@Override
	public String toString() {
		return "User [name=" + name + ", pass=" + pass + "]";
	}
	
}
