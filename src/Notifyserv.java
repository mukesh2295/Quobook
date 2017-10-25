

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Notifyserv
 */
@WebServlet("/Notifyserv")
public class Notifyserv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Notifyserv() {
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
		 // Calendar c = new GregorianCalendar();
		 // c.set(Calendar.HOUR_OF_DAY, 0); //anything 0 - 23
		 // c.set(Calendar.MINUTE, 0);
		 // c.set(Calendar.SECOND, 0);
		 // Date d1 = c.getTime();//the midnight, that's the first second of the day.
		 // System.out.println("Date: "+ d1);
		Calendar currentDate = Calendar.getInstance(); //Get the current date
		int month = currentDate.get(Calendar.MONTH);
		int day = cal.get(Calendar.DAY_OF_MONTH);
		SimpleDateFormat formatter= new SimpleDateFormat("yyyy/MMM/dd HH:mm:ss"); //format it as per your requirement
		String dateNow = formatter.format(currentDate.getTime());
		//System.out.println("Now the date is :=>  " + dateNow);
		doGet(request, response);
	}

}
