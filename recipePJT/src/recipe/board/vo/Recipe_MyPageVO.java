package recipe.board.vo;

public class Recipe_MyPageVO {
	private String user_id,recipeClip_category,recipeClip_name,recipeClip_path,recipeClip_material,recipeClip_feature,Clip_time,recipeClip_detail;
	private int recipe_board_num, scrap_seq;
	
	public Recipe_MyPageVO() {
		super();
	}

	public Recipe_MyPageVO(String user_id, String recipeClip_category, String recipeClip_name, String recipeClip_path,
			String recipeClip_material, String recipeClip_feature, String clip_time, String recipeClip_detail,
			int recipe_board_num, int scrap_seq) {
		super();
		this.user_id = user_id;
		this.recipeClip_category = recipeClip_category;
		this.recipeClip_name = recipeClip_name;
		this.recipeClip_path = recipeClip_path;
		this.recipeClip_material = recipeClip_material;
		this.recipeClip_feature = recipeClip_feature;
		this.Clip_time = clip_time;
		this.recipeClip_detail = recipeClip_detail;
		this.recipe_board_num = recipe_board_num;
		this.scrap_seq = scrap_seq;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getRecipeClip_category() {
		return recipeClip_category;
	}

	public void setRecipeClip_category(String recipeClip_category) {
		this.recipeClip_category = recipeClip_category;
	}

	public String getRecipeClip_name() {
		return recipeClip_name;
	}

	public void setRecipeClip_name(String recipeClip_name) {
		this.recipeClip_name = recipeClip_name;
	}

	public String getRecipeClip_path() {
		return recipeClip_path;
	}

	public void setRecipeClip_path(String recipeClip_path) {
		this.recipeClip_path = recipeClip_path;
	}

	public String getRecipeClip_material() {
		return recipeClip_material;
	}

	public void setRecipeClip_material(String recipeClip_material) {
		this.recipeClip_material = recipeClip_material;
	}

	public String getRecipeClip_feature() {
		return recipeClip_feature;
	}

	public void setRecipeClip_feature(String recipeClip_feature) {
		this.recipeClip_feature = recipeClip_feature;
	}

	public String getClip_time() {
		return Clip_time;
	}

	public void setClip_time(String clip_time) {
		Clip_time = clip_time;
	}

	public String getRecipeClip_detail() {
		return recipeClip_detail;
	}

	public void setRecipeClip_detail(String recipeClip_detail) {
		this.recipeClip_detail = recipeClip_detail;
	}

	public int getRecipe_board_num() {
		return recipe_board_num;
	}

	public void setRecipe_board_num(int recipe_board_num) {
		this.recipe_board_num = recipe_board_num;
	}

	public int getScrap_seq() {
		return scrap_seq;
	}

	public void setScrap_seq(int scrap_seq) {
		this.scrap_seq = scrap_seq;
	}
	
}
