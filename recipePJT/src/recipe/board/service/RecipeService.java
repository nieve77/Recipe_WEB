package recipe.board.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import recipe.board.sql.RecipeDao;
import recipe.board.vo.Custom_boardVO;
import recipe.board.vo.Notice_boardVO;
import recipe.board.vo.Recipe_FunctionVO;
import recipe.board.vo.Recipe_MyPageVO;
import recipe.board.vo.Recipe_replyVO;
import recipe.board.vo.Write_BoardVO;

@Service("recipeService")
public class RecipeService {

	@Autowired
	private RecipeDao recipeDao;
	
	public int upload(Write_BoardVO obj)
	{
		System.out.println("RecipeService upload");
		return recipeDao.uploadRow(obj);
	}
	
	public ArrayList<Write_BoardVO> searchListOne(Write_BoardVO recipeBoard)
	{
		System.out.println("RecipeService searchListOne");
		return recipeDao.searchListOneRow(recipeBoard);
	}
	public Write_BoardVO cookView(Write_BoardVO recipeBoard)
	{
		System.out.println("RecipeService cookView");
		return recipeDao.cookViewRow(recipeBoard);
	}
	public int recipeClip(Recipe_MyPageVO recipeClip)
	{
		System.out.println("RecipeService recipeClip");
		return recipeDao.recipeClipRow(recipeClip);
	}
	public ArrayList<Write_BoardVO> myRecipe(Write_BoardVO recipeBoard)
	{
		System.out.println("RecipeService myRecipe");
		return recipeDao.myRecipeRow(recipeBoard);
	}
	public ArrayList<Recipe_MyPageVO> myRecipeClip(Recipe_MyPageVO recipeBoard)
	{
		System.out.println("RecipeService myRecipeClip");
		return recipeDao.myRecipeClipRow(recipeBoard);
	}
	public int noticWrite(Notice_boardVO recipeNotice)
	{
		System.out.println("RecipeService noticWrite");
		return recipeDao.noticWriteRow(recipeNotice);
	}
	public Write_BoardVO cookModify(Write_BoardVO recipeBoard)
	{
		System.out.println("RecipeService cookModify");
		return recipeDao.cookModifyRow(recipeBoard);
	}
	public int modifyUpdate(Write_BoardVO obj)
	{
		System.out.println("RecipeService modifyUpdate");
		return recipeDao.modifyUpdateRow(obj);
	}
	public int cookDelete(Write_BoardVO recipeBoard)
	{
		System.out.println("RecipeService cookDelete");
		return recipeDao.cookDeleteRow(recipeBoard);
	}
	public ArrayList<Notice_boardVO> noticeList(Notice_boardVO obj)
	{
		System.out.println("RecipeService noticeList");
		return recipeDao.noticeListRow(obj);
	}
	public ArrayList<Custom_boardVO> customList(Custom_boardVO obj)
	{
		System.out.println("RecipeService customList");
		return recipeDao.customListRow(obj);
	}
	public int customWriteUP(Custom_boardVO obj)
	{
		System.out.println("RecipeService customWriteUP");
		return recipeDao.customWriteRowUP(obj);
	}
	public int loveHateInsert(Recipe_FunctionVO obj)
	{
		System.out.println("RecipeService loveHateInsert");
		return recipeDao.loveHateInsertRow(obj);
	}
	public int HateInsert(Recipe_FunctionVO obj)
	{
		System.out.println("RecipeService HateInsert");
		return recipeDao.HateInsertRow(obj);
	}
	public ArrayList<Recipe_FunctionVO>searchRank(Recipe_FunctionVO obj)
	{
		System.out.println("RecipeService searchRank");
		return recipeDao.searchRankRow(obj);
	}
	public Notice_boardVO noticeView(Notice_boardVO obj)
	{
		System.out.println("RecipeService noticeView");
		recipeDao.cntRow(obj);
		return recipeDao.noticeViewRow(obj);
	}
	public Custom_boardVO customView(Custom_boardVO obj)
	{
		System.out.println("RecipeService customView");
		recipeDao.cntRowCus(obj);
		return recipeDao.customViewRow(obj);
	}
	public ArrayList<Recipe_replyVO> replyClipRow(Recipe_replyVO recipeBoard)
	{
		System.out.println("RecipeService replyClipRow");
		return recipeDao.replyClipRow(recipeBoard);
	}
	public int replyRow(Recipe_replyVO obj)
	{
		System.out.println("RecipeService replyRow");
		return recipeDao.replyRow(obj);
	}
	public Recipe_FunctionVO loveCount(Recipe_FunctionVO obj)
	{
		System.out.println("RecipeService recipeloveFunction");
		return recipeDao.love_Count(obj);
	}
	public Recipe_FunctionVO hateCount(Recipe_FunctionVO obj)
	{
		System.out.println("RecipeService recipeloveFunction");
		return recipeDao.hate_Count(obj);
	}
	
	public Recipe_FunctionVO loveNum(Recipe_FunctionVO obj)
	{
		System.out.println("RecipeService recipeloveFunction");
		return recipeDao.love_SumRow(obj);
	}
	public Recipe_FunctionVO hateNum(Recipe_FunctionVO obj)
	{
		System.out.println("RecipeService recipehateFunction");
		return recipeDao.hate_SumRow(obj);
	}
}
