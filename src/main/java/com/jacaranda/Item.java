package com.jacaranda;

import java.time.LocalDate;
import java.util.Objects;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Item {
	
	private int amount;
	private String name;
	private Boolean availability;
	private double price;
	private LocalDate entry_date;
	
	@Id
	private String id;


	public Item(int amount, String name, Boolean availability, double price, LocalDate entry_date, String id) {
		super();
		this.amount = amount;
		this.name = name;
		this.availability = availability;
		this.price = price;
		this.entry_date = entry_date;
		this.id = id;
	}


	public int getAmount() {
        return amount;
    }


    public void setAmount(int amount) {
        this.amount = amount;
    }


    public String getName() {
        return name;
    }


    public void setName(String name) {
        this.name = name;
    }


    public Boolean getAvailability() {
        return availability;
    }


    public void setAvailability(Boolean availability) {
        this.availability = availability;
    }


    public double getPrice() {
        return price;
    }


    public void setPrice(double price) {
        this.price = price;
    }


    public LocalDate getEntry_date() {
        return entry_date;
    }


    public void setEntry_date(LocalDate entry_date) {
        this.entry_date = entry_date;
    }


    public String getId() {
        return id;
    }


    public void setId(String id) {
        this.id = id;
    }


    @Override
	public int hashCode() {
		return Objects.hash(id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Item other = (Item) obj;
		return Objects.equals(id, other.id);
	}
	
	public String getShortInfo() {
	    return  "[NAME]: " + name + " [AMOUNT]: " + amount + " [ID]: " + id ;
	}


    @Override
    public String toString() {
        return "Item [amount=" + amount + ", name=" + name + ", availability=" + availability + ", price=" + price
                + ", entry_date=" + entry_date + ", id=" + id + "]";
    }

	
	

}
