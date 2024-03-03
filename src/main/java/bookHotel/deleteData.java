package bookHotel;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/deleteData")
public class deleteData extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		boolean isTrue;
		
		isTrue = CustomerDBUtil.deleteBooking(id);
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("allPackage.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List<user> bookDetails = CustomerDBUtil.getCustomer(id);
			request.setAttribute("bookDetails", bookDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("useraccount.jsp");
			dispatcher.forward(request, response);
		}
		
	}

}
