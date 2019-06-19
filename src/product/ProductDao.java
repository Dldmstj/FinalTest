package product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import util.DatabaseUtil;

public class ProductDao {
		private static ProductDao instance;

		public static ProductDao getInstance() {
			if(instance == null)
				instance = new ProductDao();
			return instance;
		}
		
		public Product getProductInfo(String item) 
	    {
	        Connection conn = null;
	        PreparedStatement pstmt = null;
	        ResultSet rs = null;
	        Product product = null;
	 
	        try {
	            StringBuffer query = new StringBuffer();
	            query.append("SELECT * FROM product WHERE item=?");
	 
	            conn = DatabaseUtil.getConnection();
	            pstmt = conn.prepareStatement(query.toString());
	            pstmt.setString(1, item);
	            rs = pstmt.executeQuery();
	 
	            if (rs.next()) // 회원정보를 Member에 담는다.
	            {
	            	product = new Product();
	            	product.setItem(rs.getString("item"));
	            	product.setDegree(rs.getString("degree"));
	            	product.setPrice(rs.getString("price"));
	            	product.setNum(rs.getString("num"));
	            }
	 
	            return product;
	 
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
