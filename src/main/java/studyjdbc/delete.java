package studyjdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class delete {

	public static void main(String[] args) {
		String id="root";
		String pwd="6937544";
		String url="jdbc:mysql://localhost:3306/study_db";
		Connection conn=null;
		Statement stmt=null;
		try {
		Class.forName("com.mysql.jdbc.Driver");
		 conn=DriverManager.getConnection(url, id, pwd);///��¥ php �����ξ� ¥������ ����
		System.out.println(conn+"���ӿϷ�");
		stmt=conn.createStatement();
		String sql="DELETE FROM member WHERE id='kim'";
		int a=stmt.executeUpdate(sql);
		if(a==1)
		{
			System.out.println("����");
		}
		else
		{
			System.out.println("����");
		}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		finally {
			try {
				conn.close();
				stmt.cancel();
				
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
	}

	}


