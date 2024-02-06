package kr.basic.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.basic.member.Member;
import kr.basic.member.MemberDAO;

import java.io.IOException;

@WebServlet("/memberContent.do")
public class MemberContentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		int num = (int)session.getAttribute("log");
		
		
		Member m = MemberDAO.getInstance().getMemberByNum(num);
		
		req.setAttribute("member", m);
		
		RequestDispatcher rd = req.getRequestDispatcher("Member/memberContent.jsp");
		rd.forward(req, resp);
	}
}
