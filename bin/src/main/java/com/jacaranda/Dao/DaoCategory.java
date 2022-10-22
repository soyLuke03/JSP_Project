package com.jacaranda.Dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.query.Query;

import com.jacaranda.Category.*;

public class DaoCategory {
	
	private StandardServiceRegistry sr;
	private SessionFactory sf;
	private Session session;
	
	public DaoCategory() {
		sr = new StandardServiceRegistryBuilder().configure().build();
		sf = new MetadataSources(sr).buildMetadata().buildSessionFactory();
		session = sf.openSession();
	}
	
	public void addCategory(Category newCategory) throws CategoryException {
		if(session.get(Category.class, newCategory.getId()) == null) {
			session.getTransaction().begin();
			session.save(newCategory);
			session.getTransaction().commit();
		} else {
			throw new CategoryException("The category id exist.");
		}
		
	}
	
	public String getCategoryName(String id) {
		return session.get(Category.class, id).getName();
	}
	
	public List<Category> getCategorys() {
		Query<Category> query = session.createQuery("SELECT cat FROM Categoria cat");
		return query.getResultList();
	}
}
