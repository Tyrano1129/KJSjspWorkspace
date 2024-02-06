package kr.basic.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.basic.member.Member;
import kr.basic.member.MemberDAO;

import java.io.IOException;

@WebServlet("/memberInsert.do")
public class MemberInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String ctx = req.getContextPath();
		
		String id = req.getParameter("id");
		String pw = req.getParameter("pass");
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String phone = req.getParameter("phone");
		int age = Integer.parseInt(req.getParameter("age"));
		
		Member m = new Member(0,id,pw,name,age,email,phone);
		System.out.println(MemberDAO.getInstance().addOneMember(m));
		
		resp.sendRedirect(ctx + "/memberList.do");
	}
}
