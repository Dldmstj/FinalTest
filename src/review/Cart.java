package review;

public class Cart {
	private static int cartID;
	private static String id;
	private static String product;
	private static int quantity;
	private static int charge;
	
	public static int getCartID() {
		return cartID;
	}
	public void setCartID(int cartID) {
		this.cartID = cartID;
	}
	public static String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public static String getProduct() {
		return product;
	}
	public void setProduct(String product) {
		this.product = product;
	}
	public static int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public static int getCharge() {
		return charge;
	}
	public void setCharge(int charge) {
		this.charge = charge;
	}
	
	public Cart() {}
	public Cart(int cartID, String id, String product, int quantity, int charge) {
		super();
		this.cartID = cartID;
		this.id = id;
		this.product = product;
		this.quantity = quantity;
		this.charge = charge;
	}
	
	
}
