package bookHotel;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class CustomerDBUtil {

	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean validate(String cname, String nic) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from customer where username='"+cname+"' and password='"+nic+"'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static List<user> getCustomer(String customer_name) {
		
		ArrayList<user> getuser = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from book where cname='"+customer_name+"'";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				int id = rs.getInt(1);
				String hname = rs.getString(2);
				String rtype = rs.getString(3);
				String non = rs.getString(4);
				String date = rs.getString(5);
				String cname = rs.getString(6);
				String nic = rs.getString(7);
				String contact = rs.getString(8);
				
				user user = new user(id,hname,rtype,non,date,cname,nic,contact);
				getuser.add(user);
			}
			
		} catch (Exception e) {
			
		}
		
		return getuser;	
	}
	
	public static boolean insertcustomer(String hotelname, String roomtype, String non, String date, String cname, String nic, String contact) {
    	
    	boolean isSuccess = false;
    	
    	try {
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    	    String sql = "insert into book values (0,'"+hotelname+"','"+roomtype+"','"+non+"','"+date+"','"+cname+"','"+nic+"','"+contact+"')";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
 	
    	return isSuccess;
    }
	
public static boolean updateBooking(String id, String hotelname, String roomtype, String non, String date, String cname, String nic, String contact) {
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "update book set hotelname='"+hotelname+"',roomtype='"+roomtype+"',non='"+non+"',date='"+date+"',cname='"+cname+"',nic='"+nic+"',contact='"+contact+"'"
    				+ "where id='"+id+"'";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }

public static boolean deleteBooking(String id) {
	
	int bookId = Integer.parseInt(id);
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "delete from book where id='"+bookId+"'";
		int r = stmt.executeUpdate(sql);
		
		if (r > 0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
		
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
}
}
