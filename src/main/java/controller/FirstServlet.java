package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/FirstServlet")
public class FirstServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public FirstServlet() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		getServletContext().getRequestDispatcher("/Main.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
		
		if (uname.equals("Bob") && pass.equals("123")) {
									
			HttpSession httpSession = request.getSession();
			httpSession.setAttribute("username", "Bob");			
			response.sendRedirect("views/LogInPage.jsp");								
				
		} 
				
		else if (uname.equals("John") && pass.equals("456")) {
			
			HttpSession httpSession = request.getSession();
			httpSession.setAttribute("username", "John");
			response.sendRedirect("views/LogInPage.jsp");						
					
		}
							
		else {
			
			request.setAttribute("error", "Wrong login!");
			doGet(request, response);
			
		}
	}
}
