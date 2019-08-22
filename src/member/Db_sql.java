package member;

import java.sql.*;

import member.Member;
import member.SelectId;
import member.SelectPass;
import member.Login;
public class Db_sql {
	private static Db_sql instance = new Db_sql();
	public static Db_sql getInstance() {
		return instance;
	}
	
	private Connection conn = null;
	public void getConnection() {
		
		
		try{
			final String JDBC_URL = "jdbc:mysql://localhost:3306/basicjsp";
			final String USER = "jspid";
			final String PASS = "jsppass";
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection(JDBC_URL,USER,PASS);
		
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public String SelectPass(SelectPass member) {
		getConnection();
		String password = "";
		
		try{
			String sql ="select passwd from member where id = ? and name = ? and phone = ? and email = ?";
			PreparedStatement psmt = conn.prepareStatement(sql) ;
			psmt.setString(1, member.getId());
			psmt.setString(2, member.getName());
			psmt.setString(3, member.getPhone1()+"-"+member.getPhone2()+"-"+member.getPhone3());
			psmt.setString(4, member.getE_mail1()+"@"+member.getE_mail2());
			ResultSet rs = null;
			rs = psmt.executeQuery();
			rs.next();
			
			if(rs.getString("passwd") != null && !rs.getString("passwd").equals("")) {
				password = rs.getString("passwd");
			}
			
			conn.close();
			psmt.close();
			
		}catch(Exception e) {}
		
		return password;
	}
	
	public String SelectId(SelectId member) {
		getConnection();
		String id = "";
		
		try{
			String sql ="select id from member where name = ? and phone = ? and email = ?";
			PreparedStatement psmt = conn.prepareStatement(sql) ;
			psmt.setString(1, member.getName());
			psmt.setString(2, member.getPhone1()+"-"+member.getPhone2()+"-"+member.getPhone3());
			psmt.setString(3, member.getE_mail1()+"@"+member.getE_mail2());
			ResultSet rs = null;
			rs = psmt.executeQuery();
			rs.next();
			
			if(rs.getString("id") != null && !rs.getString("id").equals("")) {
				id = rs.getString("id");
			}
			
			conn.close();
			psmt.close();
			
		}catch(Exception e) {}
		
		return id;
	}
	
	public int Login(String id, String passwd) throws Exception{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String dbpasswd = "";
		int x = -1;
		
		try{
			getConnection();
			pstmt = conn.prepareStatement("select passwd from member where id = ?");
			pstmt.setString(1,id);	
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				dbpasswd=rs.getString("passwd");
				if(dbpasswd.equals(passwd))
					x = 1; //인증성공
				else
					x = 0; //비밀번호 틀림
			} else
				x = -1; //해당 아이디 없음
			
			
		
		}catch(Exception e) {System.out.println(e);}
		rs.close();
		pstmt.close();
		conn.close();
		
		return x;
	}
	
	public boolean isID(String id) {
		getConnection();
		boolean b = true;
		try{
			String sql ="select id from member where id = ?";
			PreparedStatement psmt = conn.prepareStatement(sql) ;
			psmt.setString(1, id);
			ResultSet rs = null;
			rs = psmt.executeQuery();
			rs.last();
			
			if(rs.getRow() == 1) {
				b = true;
			} else {
				b = false;
			}
			
			psmt.close();
		}catch(Exception e) {System.out.println(e);}
		
		return b;
	}
	
	public boolean joinMem(Member member) {
		boolean b = true;
		getConnection();
		try{
			if(isID(member.getId()) == false) {
				String sql =" INSERT INTO member VALUES (?, ?, ?, ?, ?, ?, ?)";
				PreparedStatement psmt = conn.prepareStatement(sql) ;
				psmt = conn.prepareStatement(sql.toString());
				psmt.setString(1, member.getId());
				psmt.setString(2, member.getName());
				psmt.setString(3, member.getPassword());
				psmt.setString(4, member.getPhone1()+"-"+member.getPhone2()+"-"+member.getPhone3());
				psmt.setString(5, member.getE_mail1()+"@"+member.getE_mail2());
				psmt.setString(6, member.getAddress1());
				psmt.setString(7, member.getAddress2());
				psmt.executeUpdate();
				psmt.close();
			} else {
				b = false;
			}
			conn.close();
			
		}catch(Exception e) {System.out.println("ERROR:" + e.getMessage());}
		
		return b;
	}
}
