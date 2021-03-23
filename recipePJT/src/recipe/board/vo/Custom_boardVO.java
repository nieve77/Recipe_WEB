package recipe.board.vo;

public class Custom_boardVO {
	private int custom_board_seq,cnt;
	private String custom_title, custom_content, user_id, custom_regdate ;
	
	public Custom_boardVO() {
		super();
	}

	public Custom_boardVO(int custom_board_seq, int cnt, String custom_title, String custom_content, String user_id,
			String custom_regdate) {
		super();
		this.custom_board_seq = custom_board_seq;
		this.cnt = cnt;
		this.custom_title = custom_title;
		this.custom_content = custom_content;
		this.user_id = user_id;
		this.custom_regdate = custom_regdate;
	}

	public int getCustom_board_seq() {
		return custom_board_seq;
	}

	public void setCustom_board_seq(int custom_board_seq) {
		this.custom_board_seq = custom_board_seq;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	public String getCustom_title() {
		return custom_title;
	}

	public void setCustom_title(String custom_title) {
		this.custom_title = custom_title;
	}

	public String getCustom_content() {
		return custom_content;
	}

	public void setCustom_content(String custom_content) {
		this.custom_content = custom_content;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getCustom_regdate() {
		return custom_regdate;
	}

	public void setCustom_regdate(String custom_regdate) {
		this.custom_regdate = custom_regdate;
	}
	
}
