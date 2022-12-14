package com.jacaranda.Category;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import com.jacaranda.Item.Item;

@Entity (name="Categoria")
public class Category {
	@Id
	private String id;
	private String name;
	private String description;
	@OneToMany(mappedBy = "categoria", cascade = CascadeType.ALL, orphanRemoval = true)
	private List<Item> items = new ArrayList<>();
	
	public Category() {
		
	}
	
	public Category(String id) {
		this.id = id;
	}

	public Category(String id, String name, String description) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		items = new ArrayList<>();
	}
	
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public List<Item> getItems() {
		return items;
	}

	public void setItems(List<Item> items) {
		this.items = items;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void addItem(Item item) {
		this.items.add(item);
		item.setCategoryId(this);
	}
	
	public void removeItem(Item item) {
		this.items.remove(item);
		item.setCategoryId(null);
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
		Category other = (Category) obj;
		return id == other.id;
	}
	
	public String getShortInfo() {
	    return  "[NAME]: " + name + " [ID]: " + id ;
	}

	@Override
	public String toString() {
		return "Category [id=" + id + ", name=" + name + ", items=" + items + "]";
	}
	
}
