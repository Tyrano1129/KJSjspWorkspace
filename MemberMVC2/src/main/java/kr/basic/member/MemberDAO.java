package kr.basic.member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MemberDAO {
	private MemberDAO() {}
	
	static private MemberDAO instance = new MemberDAO();
	static public MemberDAO getInstance() {
		if(instance == null) {
			instance = new MemberDAO();
		}
		return instance;
	}
	
	private Connection conn; // db객체
	private PreparedStatement ps; // 쿼리문 객체
	private ResultSet rs; // 
	
	// 데이터 베이스 연동하기 => conncection 객체 생성
	public void getConnect() {
		// java에서 데이터베이스 직접 연결하기
    	String url = "jdbc:mysql://localhost:3306/testdb?charaterEncoding=UTF-8&serverTimezone=UTC";
    	String user = "root";
    	String password = "1234";
    	try{
    		Class.forName("com.mysql.jdbc.Driver");
    		conn = DriverManager.getConnection(url,user,password);
    		System.out.println(conn);
    	}catch(SQLException e){
    		System.out.println(e.getErrorCode());
    		System.out.println("연동실패");
    		
    	}catch(ClassNotFoundException e) {
    		System.out.println("driver 클래스 찾지 못함");
    	}
	}
	// 초기값 가지고오기
	public ArrayList<Member> getMemberList(){
		ArrayList<Member> list = new ArrayList<Member>();
		String sql = "select * from member";
		try {
			getConnect();
			ps = conn.prepareStatement(sql); // String 값을 sql 명령문으로 만드는 객체
			rs = ps.executeQuery(); // 명령문을 실행 후 뷰테이블을 담은 객체
			// rs.next() 테이블에 레코드(row) 가 있다면 true : 한줄씩 체크한다.
			// 몇줄 있는지 모르니깐 while 담기
			while(rs.next()) {
				int num = rs.getInt("num");
				String id = rs.getString("id");
				String pass = rs.getString("pass");
				String name = rs.getString("name");
				int age = rs.getInt("age");
				String email = rs.getString("email");
				String phone = rs.getString("phone");
				
				Member m = new Member(num,id,pass,name,age,email,phone);
				list.add(m);
				System.out.println(m);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return list;
	}
	// 로그인
	public int checkLogin(String id, String pass) {
		String sql = "select * from member where id=? and pass=?";
		int num = 0;
		try {
			getConnect();
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, pass);
			rs = ps.executeQuery();
			if(rs.next()) {
				num = rs.getInt("num");
			}
			return num;
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return 0;
	}
	// 가입
	public int addOneMember(Member m) {
		String sql = "insert into member values(null,?,?,?,?,?,?)";
		int cnt = 0;
		try {
			getConnect();
			ps = conn.prepareStatement(sql);
			ps.setString(1, m.getId());
			ps.setString(2, m.getPass());
			ps.setString(3,m.getName());
			ps.setInt(4, m.getAge());
			ps.setString(5,m.getEmail());
			ps.setString(6, m.getPhone());
			cnt = ps.executeUpdate();
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return cnt;
	}
	public void dbClose() {
		try {
			if(rs != null) rs.close();
			if(ps != null) ps.close();
			if(conn!= null) conn.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	// 내정보 가지고오기
	public Member getMemberByNum(int number) {
		String sql = "select * from member where num=?";
		Member m = null;
		try {
			getConnect();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, number);
			rs = ps.executeQuery();
			if(rs.next()) {
				int num = rs.getInt("num");
				String id = rs.getString("id");
				String pass = rs.getString("pass");
				String name = rs.getString("name");
				int age = rs.getInt("age");
				String email = rs.getString("email");
				String phone = rs.getString("phone");
				
				m = new Member(num,id,pass,name,age,email,phone);
			}
		}catch(SQLException e) {
			
		}finally {
			dbClose();
		}
		return m;
	}
	// 삭제 하기 
	public int deleteOneMember(int num) {
		String sql = "delete from member where num=?";
		int cnt = 0;
		try {
			getConnect();
			ps = conn.prepareStatement(sql);
			ps.setInt(1,num);
			cnt = ps.executeUpdate();
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return cnt;
	}
	// 업데이트
	public int updateOneMember(int number, int age,String email, String phone) {
		String sql = "update member set age=?,email=?,phone=? where num=?";
		int cnt = 0;
		try {
			getConnect();
			ps = conn.prepareStatement(sql);
			ps.setInt(1,age);
			ps.setString(2,email);
			ps.setString(3,phone);
			ps.setInt(4, number);
			cnt = ps.executeUpdate();
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		
		return cnt;
	}
}
