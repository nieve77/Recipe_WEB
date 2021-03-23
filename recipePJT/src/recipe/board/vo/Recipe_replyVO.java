package recipe.board.vo;

public class Recipe_replyVO {
	private int recipe_board_num,recipe_reply_seq;
	private String user_id, reply, reply_time;
	public Recipe_replyVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Recipe_replyVO(int recipe_board_num, int recipe_reply_seq, String user_id, String reply, String reply_time) {
		super();
		this.recipe_board_num = recipe_board_num;
		this.recipe_reply_seq = recipe_reply_seq;
		this.user_id = user_id;
		this.reply = reply;
		this.reply_time = reply_time;
	}
	public int getRecipe_board_num() {
		return recipe_board_num;
	}
	public void setRecipe_board_num(int recipe_board_num) {
		this.recipe_board_num = recipe_board_num;
	}
	public int getRecipe_reply_seq() {
		return recipe_reply_seq;
	}
	public void setRecipe_reply_seq(int recipe_reply_seq) {
		this.recipe_reply_seq = recipe_reply_seq;
	}
	public String getUser_id() {
		return this.user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getReply() {
		return reply;
	}
	public void setReply(String reply) {
		this.reply = reply;
	}
	public String getreply_time() {
		return reply_time;
	}
	public void setreply_time(String reply_time) {
		this.reply_time = reply_time;
	}
	
	
}
