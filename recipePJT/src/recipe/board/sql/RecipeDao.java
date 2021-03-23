package recipe.board.sql;

import java.util.ArrayList;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Repository;

import recipe.board.vo.Custom_boardVO;
import recipe.board.vo.Notice_boardVO;
import recipe.board.vo.Recipe_FunctionVO;
import recipe.board.vo.Recipe_MyPageVO;
import recipe.board.vo.Recipe_replyVO;
import recipe.board.vo.Write_BoardVO;

@Repository("recipeDao")
public class RecipeDao {

	private static SqlSessionFactory factory ; 
	SqlSession session ; 
	static {
		System.out.println("------------------- mybatis loading --------------------"); 
		try{
			factory = new SqlSessionFactoryBuilder().build(
		Resources.getResourceAsReader("resource/mybatis/config/configuration.xml"));
		}catch(Exception e) {
			e.printStackTrace() ;
		}
	}
	
	public RecipeDao() {
		session = factory.openSession(true) ; //true를 하는 이유 : 그래야 자동으로 갱신된다. 
	}
	
	public int uploadRow(Write_BoardVO obj)
	{
		System.out.println("RecipeDao uploadRow");
		return session.insert("recipeBoard.upload" , obj);
	}
	public ArrayList<Write_BoardVO> searchListOneRow(Write_BoardVO recipeBoard)
	{
		System.out.println("RecipeDao searchListOneRow");
		return (ArrayList)session.selectList("recipeBoard.searchListOne",recipeBoard);
	}
	
	public Write_BoardVO cookViewRow(Write_BoardVO recipeBoard)
	{
		System.out.println("RecipeDao cookViewRow");
		return session.selectOne("recipeBoard.cookViewRow",recipeBoard);
	}
	public int recipeClipRow(Recipe_MyPageVO recipeClip)
	{
		System.out.println("RecipeDao recipeClipRow");
		return session.insert("recipeBoard.recipeClipRow",recipeClip);
	}
	public ArrayList<Write_BoardVO> myRecipeRow(Write_BoardVO recipeBoard)
	{
		System.out.println("RecipeDao myRecipeRow");
		return (ArrayList)session.selectList("recipeBoard.myRecipeRow",recipeBoard);
	}
	public ArrayList<Recipe_MyPageVO> myRecipeClipRow(Recipe_MyPageVO recipeBoard)
	{
		System.out.println("RecipeDao myRecipeClipRow");
		return (ArrayList)session.selectList("recipeBoard.myRecipeClipRow",recipeBoard);
	}
	public int noticWriteRow(Notice_boardVO recipeNotice)
	{
		System.out.println("RecipeDao noticWriteRow");
		return session.insert("recipeBoard.noticWriteRow",recipeNotice);
	}
	public Write_BoardVO cookModifyRow(Write_BoardVO recipeBoard)
	{
		System.out.println("RecipeDao cookModifyRow");
		return session.selectOne("recipeBoard.cookViewRow",recipeBoard);
	}
	public int modifyUpdateRow(Write_BoardVO obj)
	{
		System.out.println("RecipeDao modifyUpdateRow");
		return session.update("recipeBoard.modifyUpdateRow" , obj);
	}
	public int cookDeleteRow(Write_BoardVO recipeBoard)
	{
		System.out.println("RecipeDao cookDeleteRow");
		session.delete("recipeBoard.cookDeleteRow2",recipeBoard);
		session.delete("recipeBoard.cookDeleteRow3",recipeBoard);
		session.delete("recipeBoard.cookDeleteRow4",recipeBoard);
		return session.delete("recipeBoard.cookDeleteRow",recipeBoard);
	}
	public ArrayList<Notice_boardVO> noticeListRow(Notice_boardVO obj)
	{
		System.out.println("RecipeDao noticeListRow");
		return (ArrayList)session.selectList("recipeBoard.noticeListRow",obj);
	}
	public ArrayList<Custom_boardVO> customListRow(Custom_boardVO obj)
	{
		System.out.println("RecipeDao customListRow");
		return (ArrayList)session.selectList("recipeBoard.customListRow",obj);
	}
	public int customWriteRowUP(Custom_boardVO obj)
	{
		System.out.println("RecipeDao customWriteRowUP");
		return session.insert("recipeBoard.customWriteRowUP",obj);
	}
	public int loveHateInsertRow(Recipe_FunctionVO obj)
	{
		System.out.println("RecipeDao loveHateInsertRow");
		return session.insert("recipeBoard.loveHateInsertRow",obj);
	}
	public int HateInsertRow(Recipe_FunctionVO obj)
	{
		System.out.println("RecipeDao HateInsertRow");
		return session.insert("recipeBoard.HateInsertRow",obj);
	}
	public ArrayList<Recipe_FunctionVO> searchRankRow(Recipe_FunctionVO obj)
	{
		System.out.println("RecipeDao searchRankRow");
		return (ArrayList)session.selectList("recipeBoard.searchRankRow",obj);
	}
	public Notice_boardVO noticeViewRow(Notice_boardVO obj)
	{
		System.out.println("RecipeDao noticeViewRow");
		return session.selectOne("recipeBoard.noticeViewRow",obj);
	}
	public int cntRow(Notice_boardVO obj)
	{
		System.out.println("RecipeDao cntRow");
		return session.update("recipeBoard.cntRow",obj);
	}
	public Custom_boardVO customViewRow(Custom_boardVO obj)
	{
		System.out.println("RecipeDao customViewRow");
		return session.selectOne("recipeBoard.customViewRow",obj);
	}
	public int cntRowCus(Custom_boardVO obj)
	{
		System.out.println("RecipeDao cntRowCus");
		return session.update("recipeBoard.cntRowCus",obj);
	}
	public ArrayList<Recipe_replyVO> replyClipRow(Recipe_replyVO recipeBoard)
	{
		System.out.println("RecipeDao replyClipRow");
		return (ArrayList)session.selectList("recipeBoard.replyClipRow",recipeBoard);
	}
	public int replyRow(Recipe_replyVO recipeBoard)
	{
		System.out.println("RecipeDao replyRow");
		return session.insert("recipeBoard.replyRow",recipeBoard);
	}
	public Recipe_FunctionVO love_Count(Recipe_FunctionVO obj)
	{
		System.out.println("RecipeDao luvNum");
		return session.selectOne("recipeBoard.love_Count", obj);
	}
	
	public Recipe_FunctionVO hate_Count(Recipe_FunctionVO obj)
	{
		System.out.println("RecipeDao hateNum");
		return session.selectOne("recipeBoard.hate_Count", obj);
	}
	
	public Recipe_FunctionVO love_SumRow(Recipe_FunctionVO obj)
	{
		System.out.println("RecipeDao luvNum");
		return session.selectOne("recipeBoard.love_SumRow", obj);
	}
	public Recipe_FunctionVO hate_SumRow(Recipe_FunctionVO obj)
	{
		System.out.println("RecipeDao hateNum");
		return session.selectOne("recipeBoard.hate_SumRow", obj);
	}
	
	
}
