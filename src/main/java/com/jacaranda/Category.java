package com.jacaranda;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.OneToMany;

public class Category {
	private int id;
	private String name;
	@OneToMany(mappedBy = "category", cascade = CascadeType.ALL, orphanRemoval = true)
	private List<Item> items;
}
