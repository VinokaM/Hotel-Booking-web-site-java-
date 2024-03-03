package bookHotel;

public class user {
	
	private int id;
	private String hname;
	private String rtype;
	private String non;
	private String date;
	private String cname;
	private String nic;
	private String contact;
	
	
	public user(int id, String hname, String rtype, String non, String date, String cname, String nic, String contact) {
		super();
		this.id = id;
		this.hname = hname;
		this.rtype = rtype;
		this.non = non;
		this.date = date;
		this.cname = cname;
		this.nic = nic;
		this.contact = contact;
	}


	public int getId() {
		return id;
	}


	public String getHname() {
		return hname;
	}

	public String getRtype() {
		return rtype;
	}


	public String getNon() {
		return non;
	}


	public String getDate() {
		return date;
	}


	public String getCname() {
		return cname;
	}


	public String getNic() {
		return nic;
	}


	public String getContact() {
		return contact;
	}
	
	

}
