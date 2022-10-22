package com.jacaranda.Dao;

import java.time.LocalDate;
import java.util.Date;

import com.jacaranda.Category.Category;
import com.jacaranda.Category.CategoryException;
import com.jacaranda.Item.Item;

public class main {

	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		DaoItem dao = new DaoItem();
		LocalDate hoy = LocalDate.now();
		Category c = new Category("2022N");
		Item aux = new Item(31, "Hola", true, 4, hoy, "45", c);
		DaoItem d = new DaoItem();
		d.addItem(aux);
	}

}
