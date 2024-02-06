package kr.basic.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.basic.member.MemberDAO;

import java.io.IOException;

@WebServlet("/memberLgoin.do")
public class MemberLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String ctx = req.getContextPath();
		
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		
		int cnt = MemberDAO.getInstance().checkLogin(id, pw);
		
		if(cnt > 0) {
			HttpSession session = req.getSession();
			session.setAttribute("log", cnt);
			System.out.println("로그인 성공!");
		}
		
		resp.sendRedirect(ctx + "/memberList.do");
	}
}
