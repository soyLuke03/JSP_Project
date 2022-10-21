package com.jacaranda.Dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

import com.jacaranda.User.User;

public class DaoUser {
	
	private StandardServiceRegistry sr;
	private SessionFactory sf;
	private Session session;
	
	public DaoUser() {
		sr = new StandardServiceRegistryBuilder().configure().build();
		sf = new MetadataSources(sr).buildMetadata().buildSessionFactory();
		session = sf.openSession();
	}
	
	public boolean userIsvalid(String name, String pass) {
		boolean exist = false;
		User getUser = session.get(User.class, name);

		if (getUser.getName().equals(name) && getUser.getPass().equals(pass)) {
			exist = true;
		}

		return exist;
	}
}
