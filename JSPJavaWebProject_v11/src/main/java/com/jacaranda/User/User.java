package com.jacaranda.User;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Objects;

public class User {
	private String userName;
	private String password;
	private String name;
	private String address;
	private String phoneNumber;
	private String id;
	private String email;

	public User(String userName, String password) throws SQLException {
		this.userName = userName;
		this.password = password;
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
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public int hashCode() {
		return Objects.hash(id, userName);
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
		return Objects.equals(id, other.id) && Objects.equals(userName, other.userName);
	}

	@Override
	public String toString() {
		return "User [userName=" + userName + ", password=" + password + ", name=" + name + ", address=" + address
				+ ", phoneNumber=" + phoneNumber + ", id=" + id + ", email=" + email + "]";
	}

}
