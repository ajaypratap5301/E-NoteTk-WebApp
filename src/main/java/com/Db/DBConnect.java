 package com.Db;
// 12 min timstap
import java.sql.Connection;

import java.sql.DriverManager;

public class DBConnect { 
	// database connection

	private static Connection conn;

	public static Connection getConn() {
		try {
			if (conn == null) {
				// Driver class load/Register
					
	Class.forName("com.mysql.cj.jdbc.Driver");
			
				// Connection url
				 conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/enotes","root","Ajay@143");
		
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return conn;
	}
}
