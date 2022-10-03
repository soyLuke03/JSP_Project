package com.jacaranda.Item;

import java.util.Objects;

public class Item {

	/*
	 * Estos son los item de la base de datos
	 * 
	 * El id empieza en 7 debido a que ya hay añadidos 7 items en BDD de forma manual
	 * La categoria por defecto es other
	 * 
	 * 
	 * 
	 * 
	 * TO-DO
	 * Hay que ver como hacer que el id sea el mismo si se mete el mismo objeto
	 * Hay que ver como aumentar el stock de algo un mismo objeto
	 */
	
	private Integer idItem = 7;
	private String nameItem = null;
	private Double priceItem = 0.0;
	private Integer stockItem = 0;
	private Category category = Category.Other;
	
	
	/**
	 * Constructor using Name and Price
	 * @param nameItem
	 * @param priceItem
	 * @throws ItemException
	 */
	public Item(String nameItem, Double priceItem) throws ItemException{
		boolean canBe = false;
		while(canBe == false) {
			if(nameItem != null && nameItem.length()<30 && nameItem.isBlank() == false) {
				this.nameItem = nameItem;
			}
			else {
				throw new ItemException("[ERROR 0-21] The item´s name is not valid.");
			}
			
			if(priceItem > 0 && priceItem < 999999) {
				this.priceItem = priceItem;
			}
			else {
				throw new ItemException("[ERROR 0-22] The item´s price is out of range or is not valid.");
			}
			
			this.idItem += 1;
		}
	}
	
	
	/**
	 * Contructor using Name, Price and Category
	 * @param nameItem
	 * @param priceItem
	 * @param category
	 * @throws ItemException
	 */
		public Item(String nameItem, Double priceItem, Category category) throws ItemException{
			boolean canBe = false;
			while(canBe == false) {
				if(nameItem != null && nameItem.length()<30 && nameItem.isBlank() == false) {
					this.nameItem = nameItem;
				}
				else {
					throw new ItemException("[ERROR 0-21] The item´s name is not valid.");
				}
				
				if(priceItem > 0 && priceItem < 999999) {
					this.priceItem = priceItem;
				}
				else {
					throw new ItemException("[ERROR 0-22] The item´s price is out of range or is not valid.");
				}
				
				this.category = category;
				this.idItem += 1;
				
				
			}
		
	}


	@Override
	public int hashCode() {
		return Objects.hash(category, idItem, nameItem, priceItem);
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
		return category == other.category && Objects.equals(idItem, other.idItem)
				&& Objects.equals(nameItem, other.nameItem) && Objects.equals(priceItem, other.priceItem);
	}


	@Override
	public String toString() {
		return "Item [idItem=" + idItem + ", nameItem=" + nameItem + ", priceItem=" + priceItem + ", stockItem="
				+ stockItem + ", category=" + category + "]";
	}


	
	
	
	
	
}
