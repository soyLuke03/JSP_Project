package com.jacaranda;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.query.Query;


	

public class DAOitem {

	private StandardServiceRegistry sr;
	private SessionFactory sf;
	private Session session;
	
	/**
	 * Inicio de la conexi�n
	 */
	public DAOitem() {
		sr = new StandardServiceRegistryBuilder().configure().build();
		sf = new MetadataSources(sr).buildMetadata().buildSessionFactory();
		session = sf.openSession();
	}
	
   
    
    public Item getItem(String idItem) throws SQLException, ClassNotFoundException {
    	return session.get(Item.class, idItem);
    }
    
    
    
    /**
     * Cambio a Hibernate
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
    public boolean addItem(int amount, String name, boolean availability, double price, LocalDate entry_date, String id) throws SQLException, IOException, ClassNotFoundException {
    	boolean added = false;
    	session.getTransaction().begin();
    	//Aqui va la transacci�n a realizar
    		Item newItem = new Item(amount,name,availability,price,entry_date,id);
    		session.save(newItem);
    	//--------------------------------
    	session.getTransaction().commit();
    	return added;
    }
    
    
    /**
     * Cambio a Hibernate
     * @param item
     * @return
     * @throws SQLException
     * @throws ClassNotFoundException
     */
    public boolean updateItem(Item item) throws SQLException, ClassNotFoundException {
    	boolean added = false;
    	session.getTransaction().begin();
    	//Aqui va la transacci�n a realizar
    		session.update(item);
    	//--------------------------------
    	session.getTransaction().commit();
    	return added;
      }
    
    
    
    public boolean userIsvalid(String name, String pass) throws SQLException, ClassNotFoundException {
    	boolean exist = false;
    	User getUser = (User) session.get(User.class, name);
    	
    	if(getUser.getName().equals(name) && getUser.getPass().equals(pass)) {
    		exist = true;
    	}
    	
    	return exist;
    }
    
    
    /**
     * Cambio a Hibernate
     * @param item
     * @return
     * @throws SQLException
     * @throws ClassNotFoundException
     */
    public boolean deleteItem(String id) throws SQLException, ClassNotFoundException {
    	boolean added = false;
    	session.getTransaction().begin();
    	//Aqui va la transacci�n a realizar
    		Item delItem = new Item(id);
    		session.delete("Item", delItem);
    	//--------------------------------
    	session.getTransaction().commit();
    	return added;
    }
    
    
    public User getUser (String name) throws Exception {
    User resultado=null;
    Connection connection = ConectorDB.getConnection();
    Statement st = connection.createStatement();
    ResultSet resultSet = st.executeQuery("select * from USERS where name='"+name+"';");

    if(resultSet.next()) {
    resultado= new User(resultSet.getString("name"), resultSet.getString("pass"));
    }else {
    throw new Exception("Error no se encontro el usuario");
    }

    return resultado;

    }

    public List<Item> getItems() throws Exception {
	    Query<Item> query = session.createQuery("SELECT it FROM items it");
	    List<Item> resultado= query.getResultList();
	    return resultado;
    }
    
    public String getCategoryName(String id) {
    	return session.get(Category.class, id).getName();
    }
}