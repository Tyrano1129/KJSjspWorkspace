package kr.basic.controller;

import jakarta.security.auth.message.callback.PrivateKeyCallback.Request;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.basic.member.Member;
import kr.basic.member.MemberDAO;

import java.io.IOException;
import java.util.ArrayList;
@WebServlet("/memberList.do")
public class MemberListController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String ctx = req.getContextPath();
		ArrayList<Member> list = MemberDAO.getInstance().getMemberList();
		req.setAttribute("list", list);
		
//		resp.sendRedirect("member/memberList.jsp");
		
		RequestDispatcher rd = req.getRequestDispatcher("Member/memberList.jsp");
		rd.forward(req, resp);
	}
}
