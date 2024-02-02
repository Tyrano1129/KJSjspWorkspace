package Board;

public class BoardVO {
	private static int curNo = 1; // 게시글 번호
	private int no;
	private String writer; // 작성자
	private String subject; // 제목
	private String contents; // 내용
	private String regDate; // 작성일
	public BoardVO(String writer, String subject, String contents, String regDate) {
		this.writer = writer;
		this.subject = subject;
		this.contents = contents;
		this.regDate = regDate;
		this.no = BoardVO.curNo;
	}
	public static int getCurNo() {
		return BoardVO.curNo;
	}
	public static void setCurNo(int curNo) {
		BoardVO.curNo  = curNo;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getNo() {
		return no;
	}
	
	
}
