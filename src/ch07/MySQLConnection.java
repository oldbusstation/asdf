package ch07;

import java.util.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

//Java ���Ϸ� �����ϴ� Ŀ�ؼ��� ����� �ش�.
public class MySQLConnection {
	
	private String driver = "org.gjt.mm.mysql.Driver";
	private String url = "jdbc:mysql://127.0.0.1:3306/mydb?useUnicode=true&characterEncoding=EUC_KR";
	private String user = "root";
	private String pwd ="1234";
	Connection con;
	
	//////������///////////////////////////////////////////
	public MySQLConnection() {
		try {
			//DB ���� ����
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, pwd);
			System.out.println("DB ���� ����");
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	//////////////////////////////////////////////////////////
	
	////////SQL������ �ҷ����� �޼ҵ�////////
	public void listTeam() {
		try {
			String sql = "select * from tblTeam";
			PreparedStatement pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			System.out.println("��ȣ\t����\t��°�\t����\t����");
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
	
	/////////insertTeam�ϱ�///////////////////////
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
				System.out.println("�Է� ����");
			}
			else {
				System.out.println("�Է� ����");
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	/////////////////////////////////////////////////////////
	
	/////////////updateTeam�̸��� �����ϱ�////
	public void updateTeam(int num, String name) {
		try {
			String sql = "update tblTeam set name = ? where num =?";
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setInt(2, num);
			int cnt = pstmt.executeUpdate();
			if(cnt == 1) {
				System.out.println("���� ����");
			}
			else {
				System.out.println("���� ����");
			}
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	//////////////////////////////////////////////////////////////
	
	///////////////////deleteTeam�ϱ�////////////////
	public void deleteTeam(int num) {
		try {
			String sql = "delete from tblTeam where num=?";
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			int cnt = pstmt.executeUpdate();
			if(cnt == 1) {
				System.out.println("���� ����");
			}
			else {
				System.out.println("���� ����");
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
		System.out.println("1.������ ���");
		System.out.println("2.������ ����");
		System.out.println("3.������ ����");
		System.out.println("4.������ ����");
		System.out.println("5.����");
		System.out.println("==================");
		System.out.print("���ϴ� �۵��� ���ڷ� �Է��ϰ� ���͸� �����ּ���>>");
		
	}
	
	public void Run() {
		main();
	}
	
	public static void main(String[] args) {
		MySQLConnection mcon = new MySQLConnection();
		//mcon.insertTeam("�̴�ȣ", "�λ�", 38, "���̾���");
		//mcon.insertTeam("�ŵ���", "����", 51, "MC");
		//mcon.insertTeam("�豸��", "��õ", 43, "MC");
		//mcon.updateTeam(3, "�̼Ҷ�");
		mcon.deleteTeam(4);
		mcon.listTeam();
		}
}
