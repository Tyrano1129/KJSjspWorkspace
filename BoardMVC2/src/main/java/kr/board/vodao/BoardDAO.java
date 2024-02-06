package kr.board.vodao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BoardDAO {
	
	private BoardDAO() {}
	
	static private BoardDAO instance = new BoardDAO();
	static public BoardDAO getInstance() {
		if(instance == null) {
			instance = new BoardDAO();
		}
		return instance;
	}
	
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	// 데이터베이스 연동하기 => conncection 객체 생성 
    private void getConnect() {
        String url = "jdbc:mysql://localhost:3306/testdb?useSSL=false&characterEncoding=UTF-8&serverTimezone=UTC";
        String user ="root";
        String password="1234";
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(url, user, password);
            System.out.println(conn);
        }catch(SQLException e){
            e.printStackTrace();
            System.out.println("연동실패");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            System.out.println("driver 클래스 찾지 못함 ");
        }
    }
    // 열린거 닫기
    public void dbClose() {
		try {
			if(rs != null) rs.close();
			if(ps != null) ps.close();
			if(conn!= null) conn.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
    
    //가입
    public void addOneBoard(Board b) {
    	String sql = "insert into board values(null,?,?,?,?)";
    	
    	try {
    		ps = conn.prepareStatement(sql);
    		ps.setString(1, b.getWriter());
    		ps.setString(2,	b.getSubject());
    		ps.setString(3, b.getContents());
    		ps.setString(4, b.getRegDate());
    		ps.executeUpdate();
    	}catch(SQLException e) {
    		e.printStackTrace();
    	}finally {
    		dbClose();
    	}
    }
}
