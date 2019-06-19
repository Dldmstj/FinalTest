package review;

public class Review {
	static int reviewID;
	private static String id;
	private static String productName;
	private static String reviewTitle;
	private static String reviewContent;
	private static String Score;
	
	public static int getReviewID() {
		return reviewID;
	}
	public void setReviewID(int reviewID) {
		this.reviewID = reviewID;
	}
	public static String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public static String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public static String getReviewTitle() {
		return reviewTitle;
	}
	public void setReviewTitle(String reviewTitle) {
		this.reviewTitle = reviewTitle;
	}
	public static String getReviewContent() {
		return reviewContent;
	}
	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}
	public static String getScore() {
		return Score;
	}
	public void setScore(String score) {
		Score = score;
	}
	
	public Review() {}
	
	public Review(int reviewID, String id, String productName, String reviewTitle, String reviewContent, String score) {
		super();
		this.reviewID = reviewID;
		this.id = id;
		this.productName = productName;
		this.reviewTitle = reviewTitle;
		this.reviewContent = reviewContent;
		Score = score;
	}
	
	
}
