package studyjdbc;

import java.sql.*;

public class studyjdbc {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String id="root";
		String pwd="6937544";
		String url="jdbc:mysql://localhost:3306/study_db";
		Connection conn=null;
		Statement stmt=null;
		try {
		Class.forName("com.mysql.jdbc.Driver");
		 conn=DriverManager.getConnection(url, id, pwd);///진짜 php 보다훨씬 짜증난다 ㅋㅋ
		System.out.println(conn+"접속완료");
		stmt=conn.createStatement();
		String sql="INSERT INTO member(id,pwd,name,position)VAlUES('ki52','1234','jun','mid')";
		int a=stmt.executeUpdate(sql);
		if(a==1)
		{
			System.out.println("성공");
		}
		else
		{
			System.out.println("실패");
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
