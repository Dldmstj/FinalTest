package shop;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import review.Cart;
import review.Review;
import util.DatabaseUtil;

public class AdminDao {

	public static ArrayList<Member> getMemberAll() throws ClassNotFoundException {
		String SQL = "SELECT * from member";
		Connection conn = null;
	    PreparedStatement pstmt = null;
	    ResultSet rs = null;
	    //Member member = null;
		ArrayList<Member> list = new ArrayList<Member>();
		
		//Member member = new Member();
		
		try {
			conn = DatabaseUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			while(rs.next()){
				Member member = new Member();
                member.setId(rs.getString("id"));
                member.setPw(rs.getString("pw"));
                member.setName(rs.getString("name"));
                member.setAd(rs.getString("ad"));
                member.setTel(rs.getString("tel"));
                member.setEmail(rs.getString("email"));
				list.add(member);
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
