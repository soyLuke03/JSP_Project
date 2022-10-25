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
	
	public void updateCategory(Category newCategory) throws CategoryException {
		Category aux = session.get(Category.class, newCategory.getId());
		aux.setName(newCategory.getName());
		aux.setDescription(newCategory.getDescription());
		
			session.getTransaction().begin();
			session.update(aux);
			session.getTransaction().commit();
		
	}
	
	public void deleteCategory(String id) throws CategoryException {
		Category aux = session.get(Category.class, id);
		if(aux != null) {
			session.getTransaction().begin();
			session.delete(aux);
			session.getTransaction().commit();
		} else {
			throw new CategoryException("The category doesn´t exist.");
		}
	}
	
	public Category getCategory(String id) {
		return session.get(Category.class, id);
	}
	
	public List<Category> getCategorys() {
		Query<Category> query = session.createQuery("SELECT cat FROM Categoria cat");
		return query.getResultList();
	}
}
