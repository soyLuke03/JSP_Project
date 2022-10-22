package com.jacaranda.Dao;

import java.io.IOException;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.query.Query;

import com.jacaranda.Item.Item;

public class DaoItem {

	private StandardServiceRegistry sr;
	private SessionFactory sf;
	private Session session;

	/**
	 * Inicio de la conexi�n
	 */
	public DaoItem() {
		sr = new StandardServiceRegistryBuilder().configure().build();
		sf = new MetadataSources(sr).buildMetadata().buildSessionFactory();
		session = sf.openSession();
	}

	public Item getItem(String idItem) throws SQLException, ClassNotFoundException {
		return session.get(Item.class, idItem);
	}

	/**
	 * Cambio a Hibernate
	 * 
	 * @param amount
	 * @param name
	 * @param availability
	 * @param price
	 * @param entry_date
	 * @param id
	 * @return
	 * @throws SQLException
	 * @throws IOException
	 * @throws ClassNotFoundException
	 */
	public boolean addItem(Item newItem) {
		boolean added = false;
		session.getTransaction().begin();
		// Aqui va la transacci�n a realizar
		session.save(newItem);
		// --------------------------------
		session.getTransaction().commit();
		return added;
	}

	/**
	 * Cambio a Hibernate
	 * 
	 * @param item
	 * @return
	 * @throws SQLException
	 * @throws ClassNotFoundException
	 */
	public boolean updateItem(Item item) {
		boolean added = false;
		session.getTransaction().begin();
		// Aqui va la transacci�n a realizar
		session.update(item);
		// --------------------------------
		session.getTransaction().commit();
		return added;
	}

	/**
	 * Cambio a Hibernate
	 * 
	 * @param item
	 * @return
	 * @throws SQLException
	 * @throws ClassNotFoundException
	 */
	public boolean deleteItem(String id) {
		boolean added = false;
		session.getTransaction().begin();
		// Aqui va la transacci�n a realizar
		Item delItem = new Item(id);
		session.delete("Item", delItem);
		// --------------------------------
		session.getTransaction().commit();
		return added;
	}

	public List<Item> getItems(String categoryId) throws Exception {
		Query<Item> query = session.createQuery("SELECT it FROM items it WHERE it.categoria.id = '"+categoryId+"'");
		List<Item> resultado = query.getResultList();
		return resultado;
	}
	
}