package review;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import util.DatabaseUtil;

public class ReviewDao {
	public int write(Review review) {
		String SQL = "INSERT INTO review values (null,?,?,?,?,?);";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DatabaseUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1,review.getId());
			pstmt.setString(2,review.getProductName());
			pstmt.setString(3,review.getReviewTitle());
			pstmt.setString(4,review.getReviewContent());
			pstmt.setString(5,review.getScore());
			return pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {if(conn != null) conn.close(); }catch(Exception e) {e.printStackTrace();}
			try {if(pstmt != null) pstmt.close(); }catch(Exception e) {e.printStackTrace();}
			try {if(rs != null) rs.close(); }catch(Exception e) {e.printStackTrace();}
			}
		return -1; //데이터베이스 오류
	}
	
	
	
	public static ArrayList<Review> getReviewAll() throws ClassNotFoundException {
		String SQL = "SELECT * from review";
		Connection conn = null;
	    PreparedStatement pstmt = null;
	    ResultSet rs = null;
		ArrayList<Review> list = new ArrayList<Review>();
		
		Review review =  new Review();
		
		try {
			conn = DatabaseUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			while(rs.next()){
				review = new Review();
				review.setId(rs.getString("id"));
				review.setProductName(rs.getString("ProductName"));
				review.setReviewTitle(rs.getString("ReviewTitle"));
				review.setReviewContent(rs.getString("ReviewContent"));
				review.setScore(rs.getString("Score"));
				list.add(review);
			} 
		}catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {if(conn != null) conn.close(); }catch(Exception e) {e.printStackTrace();}
			try {if(pstmt != null) pstmt.close(); }catch(Exception e) {e.printStackTrace();}
			try {if(rs != null) rs.close(); }catch(Exception e) {e.printStackTrace();}
			}
		return list; // 회원가입 실패
	}
}
