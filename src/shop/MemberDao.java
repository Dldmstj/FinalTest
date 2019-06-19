package shop;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import util.DatabaseUtil;

public class MemberDao {
	
	private static MemberDao instance;

	public static MemberDao getInstance() {
		if(instance == null)
			instance = new MemberDao();
		return instance;
	}
	
	public Member getUserInfo(String id) 
    {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        Member member = null;
 
        try {
            StringBuffer query = new StringBuffer();
            query.append("SELECT * FROM member WHERE ID=?");
 
            conn = DatabaseUtil.getConnection();
            pstmt = conn.prepareStatement(query.toString());
            pstmt.setString(1, id);
            rs = pstmt.executeQuery();
 
            if (rs.next()) // 회원정보를 Member에 담는다.
            {
                member = new Member();
                member.setId(rs.getString("id"));
                member.setPw(rs.getString("pw"));
                member.setName(rs.getString("name"));
                member.setAd(rs.getString("ad"));
                member.setTel(rs.getString("tel"));
                member.setEmail(rs.getString("email"));
            }
 
            return member;
 
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
	
	public int join(Member member) {
		String SQL = "INSERT INTO member VALUES (?,?,?,?,?,?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DatabaseUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPw());
			pstmt.setString(3, member.getName());
			pstmt.setString(4, member.getAd());
			pstmt.setString(5, member.getTel());
			pstmt.setString(6, member.getEmail());
			return pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {if(conn != null) conn.close(); }catch(Exception e) {e.printStackTrace();}
			try {if(pstmt != null) pstmt.close(); }catch(Exception e) {e.printStackTrace();}
			try {if(rs != null) rs.close(); }catch(Exception e) {e.printStackTrace();}
			}
		return -1; // 회원가입 실패
	}
	public int admin(String id, String pw) {
		String SQL = "SELECT pw FROM admin WHERE id = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DatabaseUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1,id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(pw)) {
					return 1; //관리자 로그인 성공
				}
				else {
					return 0; //패스워드 틀림
				}
			}
			return -1;// 아이디 없음
		}catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {if(conn != null) conn.close(); }catch(Exception e) {e.printStackTrace();}
			try {if(pstmt != null) pstmt.close(); }catch(Exception e) {e.printStackTrace();}
			try {if(rs != null) rs.close(); }catch(Exception e) {e.printStackTrace();}
			}
		return -2; //데이터베이스 오류
	}
	
	
	
	public int login(String id, String pw) {
		String SQL = "SELECT pw FROM member WHERE id = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DatabaseUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1,id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(pw)) {
					return 1; //로그인 성공
				}
				else {
					return 0; //패스워드 틀림
				}
			}
			return -1;// 아이디 없음
		}catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {if(conn != null) conn.close(); }catch(Exception e) {e.printStackTrace();}
			try {if(pstmt != null) pstmt.close(); }catch(Exception e) {e.printStackTrace();}
			try {if(rs != null) rs.close(); }catch(Exception e) {e.printStackTrace();}
			}
		return -2; //데이터베이스 오류
	}
	
	
	public int deleteMember(String id, String pw) {
		String SQL = "SELECT pw FROM member WHERE id = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DatabaseUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1,id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(pw)) {
					SQL = "DELETE FROM member WHERE id = ? "; //탈퇴성공
					pstmt = conn.prepareStatement(SQL);
					pstmt.setString(1, id);
					pstmt.executeUpdate();
					return 1;
				}
				else {
					return 0; //패스워드 틀림
				}
			}
			return -1;// 아이디 틀림
		}catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {if(conn != null) conn.close(); }catch(Exception e) {e.printStackTrace();}
			try {if(pstmt != null) pstmt.close(); }catch(Exception e) {e.printStackTrace();}
			try {if(rs != null) rs.close(); }catch(Exception e) {e.printStackTrace();}
			}
		return -2; //데이터베이스 오류
	}
	
	public int updateMember(String id, String pw, String name, String ad, String tel,String email) {
		String SQL = "SELECT pw FROM member WHERE id = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DatabaseUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1,id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(pw)) {
					SQL = "UPDATE MEMBER SET name=?,ad=?,tel=?,email=? WHERE id=?;"; //수정 성공
					pstmt = conn.prepareStatement(SQL);
					pstmt.setString(1, name);
					pstmt.setString(2, ad);
					pstmt.setString(3, tel);
					pstmt.setString(4, email);
					pstmt.setString(5, id);
					pstmt.executeUpdate();
					return 1;
				}
				else {
					return 0; //패스워드 틀림
				}
			}
			return -1;// 아이디 틀림
		}catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {if(conn != null) conn.close(); }catch(Exception e) {e.printStackTrace();}
			try {if(pstmt != null) pstmt.close(); }catch(Exception e) {e.printStackTrace();}
			try {if(rs != null) rs.close(); }catch(Exception e) {e.printStackTrace();}
			}
		return -2; //데이터베이스 오류
	}
}
