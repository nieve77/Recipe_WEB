package recipe.board.vo;

public class Recipe_FunctionVO {
	private int recipe_board_num,love_hate;
	private String user_id, function_date,recipe_path,recipe_name,count;

	public Recipe_FunctionVO() {
		super();
	}

	public Recipe_FunctionVO(int recipe_board_num, String user_id) {
		super();
		this.user_id = user_id;
		this.recipe_board_num = recipe_board_num;
	}

	public Recipe_FunctionVO(int recipe_board_num, int love_hate, String user_id, String function_date,
			String recipe_path, String recipe_name, String count) {
		super();
		this.recipe_board_num = recipe_board_num;
		this.love_hate = love_hate;
		this.user_id = user_id;
		this.function_date = function_date;
		this.recipe_path = recipe_path;
		this.recipe_name = recipe_name;
		this.count = count;
	}
	

	public int getRecipe_board_num() {
		return recipe_board_num;
	}

	public void setRecipe_board_num(int recipe_board_num) {
		this.recipe_board_num = recipe_board_num;
	}

	public int getLove_hate() {
		return love_hate;
	}

	public void setLove_hate(int love_hate) {
		this.love_hate = love_hate;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getFunction_date() {
		return function_date;
	}

	public void setFunction_date(String function_date) {
		this.function_date = function_date;
	}

	public String getRecipe_path() {
		return recipe_path;
	}

	public void setRecipe_path(String recipe_path) {
		this.recipe_path = recipe_path;
	}

	public String getRecipe_name() {
		return recipe_name;
	}

	public void setRecipe_name(String recipe_name) {
		this.recipe_name = recipe_name;
	}

	public String getCount() {
		return count;
	}

	public void setCount(String count) {
		this.count = count;
	}
	
	

}
