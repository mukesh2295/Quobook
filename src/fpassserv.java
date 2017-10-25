
import social.database;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class fpassserv
 */
@WebServlet("/fpassserv")
public class fpassserv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public fpassserv() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 HttpSession session = request.getSession();
		 String password = request.getParameter("password");
		// System.out.println("outside try block");
		 database db = new database();
			Connection conn = db.createConnection();
			
			try{
				Statement stmt1 = conn.createStatement();	
				ResultSet rs = null;
			//	System.out.println("inside try block");
				int id = (int) session.getAttribute("user_id1");
				//System.out.println(id);
				
				String sqll = "update test1 set password = '" + password + "' where user_id = '" + id + "'";
				stmt1.executeUpdate(sqll);
				
				rs = stmt1.executeQuery("Select * from test1 where password = '"+password + "'");
				
				if(rs!=null)
				 {
					 System.out.println("Successfully changed password. Login again");
					 getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
				 }
				 else
				 {
					 System.out.println("Password change failed!");
					 response.sendRedirect("login.jsp");
				 }
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
				
		 
		doGet(request, response);
	}

}
