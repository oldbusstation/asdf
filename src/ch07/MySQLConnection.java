package ch07;

import java.util.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

//Java 파일로 연동하는 커넥션을 만들어 준다.
public class MySQLConnection {
	
	private String driver = "org.gjt.mm.mysql.Driver";
	private String url = "jdbc:mysql://127.0.0.1:3306/mydb?useUnicode=true&characterEncoding=EUC_KR";
	private String user = "root";
	private String pwd ="1234";
	Connection con;
	
	//////생성자///////////////////////////////////////////
	public MySQLConnection() {
		try {
			//DB 접속 공식
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, pwd);
			System.out.println("DB 연결 성공");
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	//////////////////////////////////////////////////////////
	
	////////SQL쿼리를 불러오는 메소드////////
	public void listTeam() {
		try {
			String sql = "select * from tblTeam";
			PreparedStatement pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			System.out.println("번호\t성명\t사는곳\t나이\t팀명");
			while(rs.next()) {
				int num = rs.getInt("num");
				String name = rs.getString("name");
				String city = rs.getString("city");
				int age = rs.getInt("age");
				String team = rs.getString("team");
				System.out.println(num+"\t"+name+"\t"+city+"\t"+age+"\t"+team);
			}
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	//////////////////////////////////////////////////////////
	
	/////////insertTeam하기///////////////////////
	public void insertTeam(String name,String city,int age, String team) {
		try {
			String sql = "insert tblTeam(name,city,age,team)"
					+ "values(?,?,?,?)";
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, city);
			pstmt.setInt(3, age);
			pstmt.setString(4, team);
			int cnt = pstmt.executeUpdate();//insert,update,delete
			if(cnt == 1) {
				System.out.println("입력 성공");
			}
			else {
				System.out.println("입력 실패");
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	/////////////////////////////////////////////////////////
	
	/////////////updateTeam이름만 수정하기////
	public void updateTeam(int num, String name) {
		try {
			String sql = "update tblTeam set name = ? where num =?";
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setInt(2, num);
			int cnt = pstmt.executeUpdate();
			if(cnt == 1) {
				System.out.println("수정 성공");
			}
			else {
				System.out.println("수정 실패");
			}
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	//////////////////////////////////////////////////////////////
	
	///////////////////deleteTeam하기////////////////
	public void deleteTeam(int num) {
		try {
			String sql = "delete from tblTeam where num=?";
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			int cnt = pstmt.executeUpdate();
			if(cnt == 1) {
				System.out.println("삭제 성공");
			}
			else {
				System.out.println("삭제 실패");
			}
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	//////////////////////////////////////////////////////////////
	
	public void main() {
		Scanner type = new Scanner(System.in);
		System.out.println("=======SQL========");
		System.out.println("1.데이터 목록");
		System.out.println("2.데이터 삽입");
		System.out.println("3.데이터 삭제");
		System.out.println("4.데이터 수정");
		System.out.println("5.종료");
		System.out.println("==================");
		System.out.print("원하는 작동을 숫자로 입력하고 엔터를 눌러주세요>>");
		
	}
	
	public void Run() {
		main();
	}
	
	public static void main(String[] args) {
		MySQLConnection mcon = new MySQLConnection();
		//mcon.insertTeam("이대호", "부산", 38, "자이언츠");
		//mcon.insertTeam("신동엽", "서울", 51, "MC");
		//mcon.insertTeam("김구라", "인천", 43, "MC");
		//mcon.updateTeam(3, "이소라");
		mcon.deleteTeam(4);
		mcon.listTeam();
		}
}
