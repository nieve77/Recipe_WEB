package recipe.board.vo;

public class Write_BoardVO {
	private int recipe_board_num;
	private String recipe_category, user_id, recipe_name, recipe_path, recipe_material, recipe_feature, time, recipe_detail;
	
	public Write_BoardVO() {
		super();
	}
	public Write_BoardVO(int recipe_board_num) {
		super();
		this.recipe_board_num = recipe_board_num;		
	}

	public Write_BoardVO(int recipe_board_num, String recipe_category, String user_id, String recipe_name,
			String recipe_path, String recipe_material, String recipe_feature, String time, String recipe_detail) {
		super();
		this.recipe_board_num = recipe_board_num;
		this.recipe_category = recipe_category;
		this.user_id = user_id;
		this.recipe_name = recipe_name;
		this.recipe_path = recipe_path;
		this.recipe_material = recipe_material;
		this.recipe_feature = recipe_feature;
		this.time = time;
		this.recipe_detail = recipe_detail;
	}

	public int getRecipe_board_num() {
		return recipe_board_num;
	}

	public void setRecipe_board_num(int recipe_board_num) {
		this.recipe_board_num = recipe_board_num;
	}

	public String getRecipe_category() {
		return recipe_category;
	}

	public void setRecipe_category(String recipe_category) {
		this.recipe_category = recipe_category;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getRecipe_name() {
		return recipe_name;
	}

	public void setRecipe_name(String recipe_name) {
		this.recipe_name = recipe_name;
	}

	public String getRecipe_path() {
		return recipe_path;
	}

	public void setRecipe_path(String recipe_path) {
		this.recipe_path = recipe_path;
	}

	public String getRecipe_material() {
		return recipe_material;
	}

	public void setRecipe_material(String recipe_material) {
		this.recipe_material = recipe_material;
	}

	public String getRecipe_feature() {
		return recipe_feature;
	}

	public void setRecipe_feature(String recipe_feature) {
		this.recipe_feature = recipe_feature;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getRecipe_detail() {
		return recipe_detail;
	}

	public void setRecipe_detail(String recipe_detail) {
		this.recipe_detail = recipe_detail;
	}
	
}
