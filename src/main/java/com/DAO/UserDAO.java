  package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.User.UserDetails;

//Data Access Object patterns, often known as DAO patterns, are used to divide high level business services from low level data accessing APIs or actions
public class UserDAO {
private Connection conn;

public UserDAO(Connection conn) {
	super();
	this.conn = conn;
}

public boolean addUser(UserDetails us) {
	boolean f=false;
	try {
		//data insert into user table
		String query="insert into user(name,email,password) values(?,?,?)";
		
		PreparedStatement ps= conn.prepareStatement(query);
		ps.setString(1, us.getName());
		ps.setString(2, us.getEmail());
		ps.setString(3, us.getPassword());
		
		int i=ps.executeUpdate();
		if(i==1) {
			f=true;
		}
	}
	catch(Exception e){
		e.printStackTrace();
	}
	return f;
}

// login page
 public UserDetails loginUser(UserDetails us) {
	
	 UserDetails user=null;
	 
try {
	String query="select*from user where email=? and password=?";
	
	PreparedStatement ps=conn.prepareStatement(query);
	ps.setString(1, us.getEmail());
	ps.setString(2, us.getPassword());
	
	ResultSet rs=ps.executeQuery();
	
	if(rs.next()) {
	user=new UserDetails();
	user.setId(rs.getInt("id"));
	user.setName(rs.getString("name"));
	user.setEmail(rs.getString("email"));
	user.setPassword("password");
		
	}
	
	
}
catch(Exception e) {
e.printStackTrace();	
}
return user;

 }

}
