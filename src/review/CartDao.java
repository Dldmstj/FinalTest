package review;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import shop.Member;
import shop.MemberDao;
import review.Cart;
import review.CartDao;
import util.DatabaseUtil;

public class CartDao {	
	

	public int addCart(Cart cart) {
		String SQL = "INSERT INTO cart values (null,?,?,?,?);";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DatabaseUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1,cart.getId());
			pstmt.setString(2,cart.getProduct());
			pstmt.setInt(3,cart.getQuantity());
			pstmt.setInt(4,cart.getCharge());
			return pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {if(conn != null) conn.close(); }catch(Exception e) {e.printStackTrace();}
			try {if(pstmt != null) pstmt.close(); }catch(Exception e) {e.printStackTrace();}
			try {if(rs != null) rs.close(); }catch(Exception e) {e.printStackTrace();}
		}
		return -1; //데이터베이스 오류
	}
	private static CartDao  instance;

	public static CartDao getInstance() {
		if(instance == null)
			instance = new CartDao();
		return instance;
	}
	
	public Cart myCart(String id) 
	{
	    Connection conn = null;
	    PreparedStatement pstmt = null;
	    ResultSet rs = null;
	    Cart cart = null;
	
	    try {
	        StringBuffer query = new StringBuffer();
	        query.append("SELECT * FROM cart WHERE ID=?");
	
	        conn = DatabaseUtil.getConnection();
	        pstmt = conn.prepareStatement(query.toString());
	        pstmt.setString(1, id);
	        rs = pstmt.executeQuery();
	
	        if (rs.next()) // 상품정보를 cart에 담는다.
	        {
	            cart = new Cart();
	            cart.setId(rs.getString("id"));
	            cart.setProduct(rs.getString("product"));
	            cart.setQuantity(rs.getInt("quantity"));
	            cart.setCharge(rs.getInt("charge"));
	        }
	
	        return cart;
	
	    } catch (Exception e) {
	        throw new RuntimeException(e.getMessage());
	    } finally {
	        // Connection, PreparedStatement를 닫는다.
	        try{
	            if ( pstmt != null ){ pstmt.close(); pstmt=null; }
	          
	            if ( conn != null ){ conn.close(); conn=null;    }
	        }catch(Exception e){
	            throw new RuntimeException(e.getMessage());
	        }
	    }
	}
	
}
