package UserUse;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.mysql.cj.x.protobuf.MysqlxCrud.Collection;

public class UserUse {

	/*
	 * El usuario debe poder:
	 * 	- Añadir item al carrito
	 * 	- Eliminar item del carrito
	 * 	- Modificar algo del carrito
	 * 	- Mostrar su carrito
	 */
	
	
	private Set<Item> shoppingCart;

	public UserUse() {
		super();
		shoppingCart = new HashSet<>();
	}


	/*
	 * Public method that add one item to the shopping cart.
	 * The parameter is one item.
	 */
	public void addToCart(Item item) {
		shoppingCart.add(item);
	}

	/*
	 * Public method that adds one or more than one item to the shopping cart.
	 * The parameter is the item and the amount.
	 */
	public void addMoreToCart(Item item, Integer number) {
		for(Integer i = 0;i<number;i++) {
			shoppingCart.add(item);
		}
	}
	
	/*
	 * Public method that removes the selected item from the shopping cart.
	 * The parameter is one item.
	 */
	public void removeFromCart(Item item) {
		shoppingCart.remove(item);
	}
	
	/*
	 * Public method that remove one or more than one item to the shopping cart.
	 * The parameter is the item and the amount.
	 */
	public void removeMoreFromCart(Item item, Integer number) {
		for(Integer i = 0;i<number;i++) {
			shoppingCart.remove(item);
		}
	}
	
	/*
	 * Public method that returns the entire List of items
	 */
	public Set<Item> showItems() {
		return shoppingCart;
	}

	
	
	
	
	
	
	
}
