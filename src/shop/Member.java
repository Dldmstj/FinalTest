package shop;

public class Member {
	private static String id;
	private static String pw;
	private static String name;
	private static String ad;
	private static String tel;
	private static String email;

		public static String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public static String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public static String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public static String getAd() {
		return ad;
	}
	public void setAd(String ad) {
		this.ad = ad;
	}
	public static String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public static String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Member() {}
	
	public Member(String id, String pw, String name, String ad, String tel, String email) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.ad = ad;
		this.tel = tel;
		this.email = email;
	}

	
}