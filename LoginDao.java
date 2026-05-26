package com.login.dao;
import java.sql.*;
public class LoginDao {
	String url = "jdbc:mysql://localhost:3306/student";
	String username = "root";
	String password = "anbu2005";
	String query = "select * from login where uname=? and pass=? ";
	String queryInsert = "insert into login values(?,?);";
	
	public boolean check(String uname,String pass) throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url, username, password);
		PreparedStatement st = con.prepareStatement(query);
		st.setString(1, uname);
		st.setString(2, pass);
		ResultSet rs = st.executeQuery();
		if(rs.next()) {
			return true;
		}
		return false;
	}
	
	public void insert(String uname,String pass) throws SQLException, ClassNotFoundException {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url, username, password);
		PreparedStatement pst = con.prepareStatement(queryInsert);
		pst.setString(1, uname);
		pst.setString(2,pass);
		pst.executeUpdate();
	}
}
