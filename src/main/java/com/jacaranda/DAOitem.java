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

public class DAOitem {

    public DAOitem() {
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
    
    
    
    
    public void addItem(int amount, String name, boolean availability, double price, LocalDate entry_date, String id) throws SQLException, IOException, ClassNotFoundException {
        Connection connection = ConectorDB.getConnection();
        Statement st =connection.createStatement();
        ResultSet resulSet =st.executeQuery("select * from items where id= '"+id+"';");
        
        PreparedStatement ps = connection.prepareStatement("INSERT INTO items (amount, name, availability, price, entry_date, id) "
                + " VALUES (?, ?, ?, ?, ?, ?)");
        
       
        if(!resulSet.next()) {
            ps.setInt(1, amount);
            ps.setString(2, name);
            ps.setBoolean(3, availability);
            ps.setDouble(4, price);
            ps.setString(5, entry_date.toString());
            ps.setString(6, id);
            ps.executeUpdate();
            
        }            
    }
    
    
    
    public boolean updateItem(Item item) throws SQLException, ClassNotFoundException {

        Connection connection = ConectorDB.getConnection();
        Statement st =connection.createStatement();
        boolean result = false;

        if(getItem(item.getId()) != null) {

        st.executeUpdate("UPDATE items SET amount = "+ item.getAmount() 
                                        + ", name = '" + item.getName() 
                                        + "', availability = " + item.getAvailability() 
                                        + ", price = "+ item.getPrice() 
                                        + ", entry_date='" + item.getEntry_date() 
                                        + "' where id = '"
                                        + item.getId() + "';");
        
        result = true;
        };
        return result;
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
    
    
    public void deleteItem(String id) throws SQLException, ClassNotFoundException {
        Connection connection = ConectorDB.getConnection();
        Statement statement=connection.createStatement(); 
        
        
        statement.executeUpdate("DELETE FROM items WHERE id='"+id+"';");
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


