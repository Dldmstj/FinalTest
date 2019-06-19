package product;

public class Product {
	String kind;
	String item;
	String degree;
	String price;
	String num;
	
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	public String getItem() {
		return item;
	}
	public void setItem(String item) {
		this.item = item;
	}
	public String getDegree() {
		return degree;
	}
	public void setDegree(String degree) {
		this.degree = degree;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	
	public Product() {}
	
	public Product(String kind, String item, String degree, String price, String num) {
		super();
		this.kind = kind;
		this.item = item;
		this.degree = degree;
		this.price = price;
		this.num = num;
	}
	
	
}
