package com.connection.student;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
	
	
		public static Connection requestConnection() {
			
			Connection con =null;
			String url="jdbc:mysql://localhost:3306/company";
			String user="root";
			String pass="tiger";
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				
				con=DriverManager.getConnection(url, user, pass);
				
				
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return con;
		}
	}


