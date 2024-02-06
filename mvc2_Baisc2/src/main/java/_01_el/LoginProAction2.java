package _01_el;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginProAction2
 */
@WebServlet("/LoginPro2.do")
public class LoginProAction2 extends HttpServlet {
	// 클래스의 식별자
	private static final long serialVersionUID = 1L;
       
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//		super.service(req, resp);
		
		String dbid = "qwer";
		String dbpw = "1234";
		
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		
		if(dbid.equals(id) && dbpw.equals(pw)) {
			// 브라우저 세션값을 가지고옴
			HttpSession session = req.getSession();
			
			session.setAttribute("log", id);
		}
		// 디폴트 경로 wepapp
		resp.sendRedirect("01_el/index.jsp");
		
	}
	
}
