package Board;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

public class BoardDAO {
	private ArrayList<BoardVO> boardList;
	private int cnt;

	public BoardDAO() {
		boardList = new ArrayList<BoardVO>();
	}

	public ArrayList<BoardVO> getBoardList() {
		return boardList;
	}
	
	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	// 게시글 추가
	public void boardAdd(String writer, String subject, String contents) {
		// 현재 날짜 구하기
		LocalDate now = LocalDate.now();
		//now.plusDays(cnt)
		// 원하는 포맷으로 정의하기
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		// 포맷적용
		String formatedNow = now.format(formatter);

		BoardVO board = new BoardVO(writer, subject, contents, formatedNow);

		BoardVO.setCurNo(BoardVO.getCurNo() + 1);

		boardList.add(board);
	}

	// 게시글 수정
	public void boardSet(int idx, String subject, String contents) {
		boardList.get(idx).setContents(contents);
		boardList.get(idx).setSubject(subject);
	}

	// 게시글 삭제
	public void boardDelete(int idx) {
		boardList.remove(idx);
		BoardVO.setCurNo(BoardVO.getCurNo() - 1);
	}

	// 게시글 전체 삭제
	public void boardAllDelete() {
		boardList = new ArrayList<BoardVO>();
		BoardVO.setCurNo(1);
	}
	
//	public int startNumber() {
//		int total = boardList.size();
//		int onePage = 5;
//	}
	
}
