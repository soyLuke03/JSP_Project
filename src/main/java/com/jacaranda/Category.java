package com.jacaranda;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity (name="Categoria")
public class Category {
	@Id
	private int id;
	private String name;
	@OneToMany(mappedBy = "categoria", cascade = CascadeType.ALL, orphanRemoval = true)
	private List<Item> category = new ArrayList<>();
	
	public Category() {
		
	}

	public Category(int id, String name, List<Item> items) {
		super();
		this.id = id;
		this.name = name;
		this.category = new ArrayList<>();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public List<Item> getItems() {
		return category;
	}

	public void setItems(List<Item> items) {
		this.category = items;
	}
	
	public void addItem(Item item) {
		this.category.add(item);
		item.setCategoryId(this);
	}
	
	public void removeItem(Item item) {
		this.category.remove(item);
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

	@Override
	public String toString() {
		return "Category [id=" + id + ", name=" + name + ", items=" + category + "]";
	}
	
}
