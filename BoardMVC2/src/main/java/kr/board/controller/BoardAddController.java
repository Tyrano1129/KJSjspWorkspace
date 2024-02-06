package kr.board.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.board.vodao.Board;
import kr.board.vodao.BoardDAO;

import java.io.IOException;
@WebServlet("/addBoard.do")
public class BoardAddController extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String ctx = req.getContextPath();
		
		
		String writer = req.getParameter("writer");
		String subject = req.getParameter("subject");
		String contents = req.getParameter("contents");
		String regDate = req.getParameter("regDate");
		
		Board b = new Board(0,writer,subject,contents,regDate); 
		BoardDAO.getInstance().addOneBoard(b);
		
		resp.sendRedirect(ctx + "/main.jsp");
	}
}
