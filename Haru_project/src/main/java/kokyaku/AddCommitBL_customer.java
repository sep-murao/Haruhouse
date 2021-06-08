package kokyaku;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddCommitBL_customer
 */
@WebServlet("/AddCommitBL_customer")
public class AddCommitBL_customer extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection connect = null;
    static final String URL = "jdbc:mysql://localhost/harudb?useUnicode=true&characterEncoding=utf8";
    static final String USERNAME = "root";
    static final String PASSWORD = "";    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCommitBL_customer() {
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
		//doGet(request, response);
		
		request.setCharacterEncoding("UTF-8");			//日本語文字コード リクエスト前に記入
		 Connection connect = null;
		 PreparedStatement stmt = null;
		
		 String CUST_KIND =request.getParameter("CUST_KIND");
	     String CORP_NAME =request.getParameter("CORP_NAME");
	     String CORP_NAME_KANA =request.getParameter("CORP_NAME_KANA");
	     String CUST_DEPARTMENT_NAME =request.getParameter("CUST_DEPARTMENT_NAME");
	     String CUST_L_NAME =request.getParameter("CUST_L_NAME");
	     String CUST_F_NAME =request.getParameter("CUST_F_NAME");
	     String CUST_ZIP =request.getParameter("CUST_ZIP");
	     String CUST_PREFECTURE =request.getParameter("CUST_PREFECTURE");
	     String CUST_ADDRESS1 =request.getParameter("CUST_ADDRESS1");
	     String CUST_ADDRESS2 =request.getParameter("CUST_ADDRESS2");
	     String CUST_TEL1 =request.getParameter("CUST_TEL1");
	     String CUST_TEL2 =request.getParameter("CUST_TEL2");
	     String CUST_TEL3 =request.getParameter("CUST_TEL3");
	     String CUST_MOBILE1 =request.getParameter("CUST_MOBILE1");
	     String CUST_MOBILE2 =request.getParameter("CUST_MOBILE2");
	     String CUST_MOBILE3 =request.getParameter("CUST_MOBILE3");
	     String CUST_MAIL =request.getParameter("CUST_MAIL");
		 String[] CUST_MAIL_SEND_FLG = request.getParameterValues("CUST_MAIL_SEND_FLG");

		 
		 try {
			 Class.forName("com.mysql.jdbc.Driver");
				connect = DriverManager.getConnection(URL, USERNAME, PASSWORD);
				stmt = connect.prepareStatement(
				"INSERT INTO `mst_customer`(`CUST_KIND`, `CUST_CORP_NAME`, `CUST_CORP_NAME_KANA`, `CUST_DEPARTMENT_NAME`, `CUST_L_NAME`, `CUST_F_NAME`, `CUST_L_NAME_KANA`, `CUST_F_NAME_KANA`, `CUST_ZIP`, `CUST_PREFECTURE`, `CUST_ADDRESS1`, `CUST_ADDRESS2`, `CUST_TEL1`, `CUST_TEL2`, `CUST_TEL3`, `CUST_MOBILE1`, `CUST_MOBILE2`, `CUST_MOBILE3`, `CUST_MAIL`, `CUST_MAIL_SEND_FLG`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]','[value-6]','[value-7]','[value-8]','[value-9]','[value-10]','[value-11]','[value-12]','[value-13]','[value-14]','[value-15]','[value-16]','[value-17]','[value-18]','[value-19]','[value-20]')");
			
				stmt.setString(1, name);
	   		    stmt.setString(2, address );
	   		    stmt.setString(3, tel );
			    stmt.setString(4, categoryid );
			    
			   int rs = stmt.executeUpdate();
				 
			 } catch(Exception e){
					e.printStackTrace();
		}
		
			 request.getRequestDispatcher("/ListBL").forward(request, response); 
	}

}
