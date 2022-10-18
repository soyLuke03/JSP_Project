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

public class DAOitem {
        
	private StandardServiceRegistry sr;
	private SessionFactory sf;
	private Session session;
	
	
	/**
	 * Inicio de la conexión
	 */
	public DAOitem() {
		sr = new StandardServiceRegistryBuilder().configure().build();
		sf = new MetadataSources(sr).buildMetadata().buildSessionFactory();
		session = sf.openSession();
	}
    
    public Item getItem(String idItem) throws SQLException, ClassNotFoundException {
        Connection connection = ConectorDB.getConnection();
        Statement st = connection.createStatement();
        
        ResultSet resultSet = st.executeQuery("select * from items where id= '"+idItem+"';");
        Item item = null;
        while (resultSet.next()) {
            
            item = new Item(resultSet.getInt(1), resultSet.getString(2), resultSet.getBoolean(3), resultSet.getDouble(4), LocalDate.parse(resultSet.getString(5)), resultSet.getString(6) );
        }
            
        return item;
    }
    
    
    
    
    public boolean addItem(int amount, String name, boolean availability, double price, LocalDate entry_date, String id) throws SQLException, IOException, ClassNotFoundException {
    	boolean added = false;
    	session.getTransaction().begin();
    	//Aqui va la transacción a realizar
    		Item newItem = new Item(amount,name,availability,price,entry_date,id);
    		session.save(newItem);
    	//--------------------------------
    	session.getTransaction().commit();
    	return added;
    }
    
    
    
    public boolean updateItem(Item item) throws SQLException, ClassNotFoundException {
    	boolean added = false;
    	session.getTransaction().begin();
    	//Aqui va la transacción a realizar
    		session.update(item);
    	//--------------------------------
    	session.getTransaction().commit();
    	return added;
        }
    
    
    
    public boolean userIsvalid(String name, String pass) throws SQLException, ClassNotFoundException {
        Connection connection = ConectorDB.getConnection();
        boolean bandera=false;

        Statement st = connection.createStatement();
        ResultSet resultSet = st.executeQuery("select * from USERS where name='"+name+"'and pass='"+pass+"';");
        if(resultSet.next()) {
           
           bandera=true;
            
        }
        return bandera;
        }
    
    
    public boolean deleteItem(Item item) throws SQLException, ClassNotFoundException {
    	boolean added = false;
    	session.getTransaction().begin();
    	//Aqui va la transacción a realizar
    		session.delete(item);
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

    
    public List<User> getUssers () throws Exception {
    List<User> resultado= new ArrayList<User>();
    Connection connection = ConectorDB.getConnection();
    Statement st = connection.createStatement();
    ResultSet resultSet = st.executeQuery("select * from USERS");

    while(resultSet.next()) {
    User usuario= new User(resultSet.getString("name"), resultSet.getString("pass"));
    resultado.add(usuario);
    }

    return  resultado;
    }
    
    

    
    public List<Item> getItems() throws Exception {
    List<Item> resultado= new ArrayList<Item>();
    Connection connection = ConectorDB.getConnection();
    Statement st = connection.createStatement();
    ResultSet resultSet = st.executeQuery("select * from items");

    while(resultSet.next()) {
    Item car = new Item(resultSet.getInt(1), resultSet.getString(2), resultSet.getBoolean(3), resultSet.getDouble(4), LocalDate.parse(resultSet.getString(5)), resultSet.getString(6));
    resultado.add(car);
    
    }
    return  resultado;
    }
}


