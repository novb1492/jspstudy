package studyjdbc;

import java.sql.*;

public class studyjdbc {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String id="root";
		String pwd="6937544";
		String url="jdbc:mysql://localhost:3306/study_db";
		try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn=DriverManager.getConnection(url, id, pwd);
		System.out.println(conn);
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
