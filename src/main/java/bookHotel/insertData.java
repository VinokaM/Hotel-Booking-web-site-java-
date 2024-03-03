package bookHotel;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/insertData")
public class insertData extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String hname = request.getParameter("hname");
		String rtype = request.getParameter("rtype");
		String non = request.getParameter("non");
		String date = request.getParameter("date");
		String cname = request.getParameter("cname");
		String nic = request.getParameter("nic");
		String contact = request.getParameter("contact");
		
		boolean isTrue;
		
		isTrue = CustomerDBUtil.insertcustomer(hname,rtype,non,date,cname,nic,contact);
		
		if(isTrue == true) {
			List<user> bookDetails = CustomerDBUtil.getCustomer(cname);
			request.setAttribute("bookDetails", bookDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("BookingDetails.jsp");
			dis.forward(request, response);
			
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
