package UserUse;

public class Item {

	/*
	 * Estos son los item de la base de datos
	 */
	
	private Integer idItem;
	private String nameItem;
	private Double priceItem;
	private Integer stockItem;
	
	
	public Item(Integer idItem, String nameItem, Double priceItem, Integer stockItem) {
		super();
		this.idItem = idItem;
		this.nameItem = nameItem;
		this.priceItem = priceItem;
		this.stockItem = stockItem;
	}
	
	
	
	
}
