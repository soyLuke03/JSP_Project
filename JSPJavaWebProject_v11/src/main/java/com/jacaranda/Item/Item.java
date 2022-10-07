package com.jacaranda.Item;

import java.util.Objects;

public class Item {

	/*
	 * Estos son los item de la base de datos
	 * 
	 * El id empieza en 7 debido a que ya hay a�adidos 7 items en BDD de forma manual
	 * La categoria por defecto es other
	 * 
	 * 
	 * 
	 * 
	 * TO-DO
	 * Hay que ver como hacer que el id sea el mismo si se mete el mismo objeto
	 * Hay que ver como aumentar el stock de algo un mismo objeto
	 */
	
	private static Integer idItem = 0;
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
	

	public Item(String nameItem, Double priceItem, String category) throws ItemException{
		boolean canBe = false;
		while(canBe == false) {
			if(nameItem != null && nameItem.length()<30 && nameItem.isBlank() == false) {
				this.nameItem = nameItem;
			}
			else {
				throw new ItemException("[ERROR 0-21] The item�s name is not valid.");
			}
			
			if(priceItem > 0 && priceItem < 999999) {
				this.priceItem = priceItem;
				canBe = true;
			}
			else {
				throw new ItemException("[ERROR 0-22] The item�s price is out of range or is not valid.");
			}
			
			if(category != null) {
				this.category = Category.valueOf(category);
			}
			
			Item.idItem += 1;
		}
	}
	

		public Item(String nameItem, Double priceItem, int stock, String category) throws ItemException{
			boolean canBe = false;
			while(canBe == false) {
				if(nameItem != null && nameItem.length()<30 && nameItem.isBlank() == false) {
					this.nameItem = nameItem;
				}
				else {
					throw new ItemException("[ERROR 0-21] The item�s name is not valid.");
				}
				
				if(priceItem > 0 && priceItem < 999999) {
					this.priceItem = priceItem;
				}
				else {
					throw new ItemException("[ERROR 0-22] The item�s price is out of range or is not valid.");
				}
				
				if(stock > 0 && stock < 99999) {
					this.stockItem = stock;
				} else {
					throw new ItemException("[ERROR 0-23] The item�s stock is out of range or is not valid.");
				}
				
				if(category != null) {
					canBe = true;
					this.category = Category.valueOf(category);
				}
				Item.idItem += 1;
				
				
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
		return nameItem + ", priceItem=" + priceItem + ", stockItem="
				+ stockItem + ", category=" + category;
	}


	public Integer getIdItem() {
		return idItem;
	}


	public void setIdItem(Integer idItem) {
		Item.idItem = idItem;
	}


	public String getNameItem() {
		return nameItem;
	}


	public void setNameItem(String nameItem) {
		this.nameItem = nameItem;
	}


	public Double getPriceItem() {
		return priceItem;
	}


	public void setPriceItem(Double priceItem) {
		this.priceItem = priceItem;
	}


	public Integer getStockItem() {
		return stockItem;
	}


	public void setStockItem(Integer stockItem) {
		this.stockItem = stockItem;
	}


	public Category getCategory() {
		return category;
	}


	public void setCategory(Category category) {
		this.category = category;
	}


	
	
	
	
	
}
