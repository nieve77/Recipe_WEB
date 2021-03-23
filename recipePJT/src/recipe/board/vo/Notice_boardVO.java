package recipe.board.vo;

public class Notice_boardVO {
	private int notice_board_seq,cnt;
	private String admin_title, admin_content, admin_writer, admin_regdate;
	
	public Notice_boardVO() {
		super();
	}
	public Notice_boardVO(int notice_board_seq, int cnt, String admin_title, String admin_content, String admin_writer,
			String admin_regdate) {
		super();
		this.notice_board_seq = notice_board_seq;
		this.cnt = cnt;
		this.admin_title = admin_title;
		this.admin_content = admin_content;
		this.admin_writer = admin_writer;
		this.admin_regdate = admin_regdate;
	}
	
	public int getNotice_board_seq() {
		return notice_board_seq;
	}
	public void setNotice_board_seq(int notice_board_seq) {
		this.notice_board_seq = notice_board_seq;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public String getAdmin_title() {
		return admin_title;
	}
	public void setAdmin_title(String admin_title) {
		this.admin_title = admin_title;
	}
	public String getAdmin_content() {
		return admin_content;
	}
	public void setAdmin_content(String admin_content) {
		this.admin_content = admin_content;
	}
	public String getAdmin_writer() {
		return admin_writer;
	}
	public void setAdmin_writer(String admin_writer) {
		this.admin_writer = admin_writer;
	}
	public String getAdmin_regdate() {
		return admin_regdate;
	}
	public void setAdmin_regdate(String admin_regdate) {
		this.admin_regdate = admin_regdate;
	}
	
}
