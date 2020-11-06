package admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;
import DAL.Datahelper;
/**
 * Servlet implementation class Loginser
 */
@WebServlet("/Loginser")
public class Loginser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
		String user = request.getParameter("txtuser");
		String upass = request.getParameter("txtpass");
		//Class.forName("com.mysql.jdbc.Driver");
		//Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/smarterp","root","");
		//Statement st = con.createStatement();
		//ResultSet res=st.executeQuery("select * from admin where username='"+user+"' and password='"+upass+"'");
		Datahelper.connection();
		ResultSet res = Datahelper.selectData("select * from admin where username='"+user+"' and password='"+upass+"'");
		if(res.next())
		{
			HttpSession session = request.getSession();
			session.setAttribute("aid",user);
			Cookie obj = new Cookie("cuser",user);
     	     response.addCookie(obj);
     	     obj.setMaxAge(10000);
     	    Cookie obj1 = new Cookie("cpass",upass);
    	     response.addCookie(obj1);
    	     obj1.setMaxAge(10000);
    	     
     	   
			response.sendRedirect("admin/dashboard.jsp");
		}
		else
		{
			response.sendRedirect("admin/index.jsp?q=invalid userid and password");
		}
		Datahelper.closeConnection();
		}
		catch(Exception ex)
		{
			
		}
		
	}

}
