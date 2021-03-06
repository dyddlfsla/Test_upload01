package whatMvc.A02_mvc.admin;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import whatMvc.A01_vo.Report;
import whatMvc.A03_database.A01_data;

/**
 * Servlet implementation class A00_base
 */
@WebServlet(name = "A00_base.do", urlPatterns = { "/A00_base.do" })
public class A00_base extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A00_base() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		A01_data db = new A01_data();
		ArrayList<Report> r = db.rlist();
		System.out.println(r.size());
		request.setAttribute("reportlist", r);
		
		
		RequestDispatcher rd = request.getRequestDispatcher("Whatsup\\sign_login_find\\A03_base.jsp");
		rd.forward(request, response);
	}

}
