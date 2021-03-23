package recipe.ctrl;

import java.io.FileOutputStream;
import java.io.PrintWriter;
import java.net.URLDecoder;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import recipe.board.service.RecipeService;
import recipe.board.vo.Custom_boardVO;
import recipe.board.vo.Notice_boardVO;
import recipe.board.vo.Recipe_FunctionVO;
import recipe.board.vo.Recipe_MyPageVO;
import recipe.board.vo.Recipe_replyVO;
import recipe.board.vo.Write_BoardVO;

@Controller
public class RecipeCtrl {
	
	@Autowired
	private RecipeService recipeService;
	
	@RequestMapping("/recipe_join.scv")
	public String joinPage()
	{
		System.out.println("RecipeCtrl recipe_join");
		return "recipe_join";
	}
	@RequestMapping("/recipe_QA.scv")
	public String QAPage()
	{
		System.out.println("RecipeCtrl recipe_QA");
		return "recipe_QA";
	}
	@RequestMapping("/recipe_userModify.scv")
	public String memberModifyPage()
	{
		System.out.println("RecipeCtrl recipe_userModify");
		return "recipe_Modify";
	}
	@RequestMapping("/recipe_writeForm.scv")
	public String recipeWritePage()
	{
		System.out.println("RecipeCtrl recipe_writeForm");
		return "recipe_writeForm";
	}
	@RequestMapping("/recipe_NoticWrite.scv")
	public String noticWrite()
	{
		System.out.println("RecipeCtrl noticeWrite");
		return "recipe_NoticWrite";
	}
	@RequestMapping("/recipe_CustomWrite.scv")
	public String recipeCustomWrite()
	{
		System.out.println("RecipeCtrl recipeCustomWrite");
		return "recipe_CustomWrite";
	}
	
	@RequestMapping(value="recipe_upload.scv")
	public String recipe_upload(Write_BoardVO obj, HttpServletRequest request,
			                    @RequestParam("file") MultipartFile file) throws Exception {
		String selectFlag = file.getOriginalFilename();
		if(selectFlag.equals("")) { file = null; }
		String nofileFlag="OFF";
		if(file == null) { nofileFlag="On"; }
		System.out.println("RecipeCtrl recipe_upload");
		String path="error";
		if(nofileFlag.equals("On")) {
			obj.setRecipe_path("default.jpg");
			
			int flag = recipeService.upload(obj);
			if(flag != 0)
			{
				System.out.println("RecipeCtrl nofile_upload");
				path="index";
			}
		}
/*		System.out.println(file);
		System.out.println(file.getOriginalFilename());*/
		
		if(file != null) {
			System.out.println("RecipeCtrl result_upload");
			System.out.println(obj.getRecipe_category());
			String Imgpath = request.getSession().getServletContext().getRealPath("/upload/");
			String Imgname = file.getOriginalFilename();
			obj.setRecipe_path(Imgname);
			byte [] data = file.getBytes();
			FileOutputStream out = new FileOutputStream(Imgpath+"/"+file.getOriginalFilename());
			out.write(data);
			System.out.println("Imgpath : "+Imgpath);
			
			int flag = recipeService.upload(obj);
			if(flag != 0)
			{
				System.out.println("RecipeCtrl Yes file_upload");
				path="index";
			}
		}
		
		return path;
	}
	@RequestMapping(value="recipe_ModifyUpload.scv")
	public String recipe_ModifyUpdate(Write_BoardVO obj, HttpServletRequest request,
			                    @RequestParam("file") MultipartFile file) throws Exception {
		String selectFlag = file.getOriginalFilename();
		if(selectFlag.equals("")) { file = null; }
		String nofileFlag="OFF";
		if(file == null) { nofileFlag="On"; }
		System.out.println("RecipeCtrl recipe_ModifyUpload");
		String path="error";
		if(nofileFlag.equals("On")) {
			obj.setRecipe_path("default.jpg");
			int flag = recipeService.modifyUpdate(obj);
			if(flag != 0)
			{
				System.out.println("RecipeCtrl nofile_recipe_ModifyUpload");
				path="index";
			}
		}
/*		System.out.println(file);
		System.out.println(file.getOriginalFilename());*/
		
		if(file != null) {
			System.out.println("RecipeCtrl result_recipe_ModifyUpload");
			System.out.println(obj.getRecipe_category());
			String Imgpath = request.getSession().getServletContext().getRealPath("/upload/");
			String Imgname = file.getOriginalFilename();
			obj.setRecipe_path(Imgname);
			byte [] data = file.getBytes();
			FileOutputStream out = new FileOutputStream(Imgpath+"/"+file.getOriginalFilename());
			out.write(data);
			System.out.println("Imgpath : "+Imgpath);
			
			int flag = recipeService.modifyUpdate(obj);
			if(flag != 0)
			{
				System.out.println("RecipeCtrl Yes file_recipe_ModifyUpload");
				path="index";
			}
		}
		
		return path;
	}
	
	@RequestMapping(value="/recipe_All_menuSearch.scv")
	public @ResponseBody ArrayList<Write_BoardVO> recipeAllSearch(Write_BoardVO recipeBoard, HttpServletRequest request) throws Exception {
		try{
			System.out.println("RecipeCtrl recipeAllSearch");
			
			String recipeKateName=new String(URLDecoder.decode(request.getParameter("recipe_category"),"utf-8"));
			recipeBoard.setRecipe_category(recipeKateName);
			System.out.println(recipeKateName);
			ArrayList<Write_BoardVO> searchListOne = recipeService.searchListOne(recipeBoard);
			return searchListOne;
		}catch(Exception e)
		{
			System.out.println("예외발생");
			ArrayList<Write_BoardVO> exceptionList = new ArrayList<Write_BoardVO>();
			return exceptionList;
		}
	}
	
	@RequestMapping("/recipe_cookView.scv")
	public String cookView(Write_BoardVO recipeBoard, Model model)
	{
		System.out.println("RecipeCtrl recipe_cookView");
		Write_BoardVO result = recipeService.cookView(recipeBoard);
		model.addAttribute("cookView",result);
		return "recipe_CookView";
	}
	@RequestMapping("/recipe_cookModify.scv")
	public String cookModify(Write_BoardVO recipeBoard, Model model)
	{
		System.out.println("RecipeCtrl recipe_CookModify");
		Write_BoardVO result = recipeService.cookModify(recipeBoard);
		model.addAttribute("cookModify",result);
		return "recipe_writeMody";
	}
	
	@RequestMapping("/recipe_clip.scv")
	public String recipe_Clip(Recipe_MyPageVO recipeClip) throws Exception {
		System.out.println("RecipeCtrl recipeClip");
		String path="recipe_error_clip";
		try {
			int flag = recipeService.recipeClip(recipeClip);
			if(flag != 0)
			{
				path="redirect:/index.scv";
			}
		}catch(Exception e)
		{
			System.out.println("예외 발생");
			System.out.println(path);
			return path;	
		}
		return path;
	}
	@RequestMapping("/recipe_MyRecipe.scv")
	public String recipe_MyRecipe(Write_BoardVO recipeBoard, Model model)
	{
		System.out.println("RecipeCtrl recipe_MyRecipe");
		String clipUser = recipeBoard.getUser_id();
		ArrayList<Write_BoardVO> list = recipeService.myRecipe(recipeBoard);
		model.addAttribute("MyRecipeList",list);
		
		Recipe_MyPageVO clipVO = new Recipe_MyPageVO();
		clipVO.setUser_id(clipUser);
		System.out.println(clipVO.getUser_id());
		ArrayList<Recipe_MyPageVO> resultClip = recipe_ClipRecipe(clipVO);
		model.addAttribute("recipeClipList",resultClip);
		return "recipe_MyRecipe";
	}
	@RequestMapping("/recipe_CustomerCenter.scv")
	public String recipeCustom(Model model)
	{
		System.out.println("RecipeCtrl recipeCustom");
		Notice_boardVO vo = new Notice_boardVO();
		Custom_boardVO vo2 = new Custom_boardVO();
		ArrayList<Notice_boardVO> noticeResult = recipeService.noticeList(vo);
		model.addAttribute("noticeList",noticeResult);
		ArrayList<Custom_boardVO> customResult = recipeService.customList(vo2);
		model.addAttribute("customList",customResult);
		return "recipe_CustomerCenter";
	}
	public ArrayList<Recipe_MyPageVO> recipe_ClipRecipe(Recipe_MyPageVO recipeBoard)
	{
		System.out.println("RecipeCtrl recipe_ClipRecipe");
		ArrayList<Recipe_MyPageVO> list = recipeService.myRecipeClip(recipeBoard);
		return list;
	}
	
	@RequestMapping("/recipe_NoticWriteUP.scv")
	public String recipe_NoticWriteUP(Notice_boardVO recipeNotice)
	{
		System.out.println("RecipeCtrl recipe_NoticWriteUP");
		String path="error";
		int flag = recipeService.noticWrite(recipeNotice);
		if(flag != 0)
		{
			path="redirect:/recipe_CustomerCenter.scv";
		}
		return path;
	}
	
	@RequestMapping("/recipe_cookDelete.scv")
	public String recipe_cookDelete(Write_BoardVO recipeBoard)
	{
		System.out.println("RecipeCtrl recipe_cookDelete");
		String path="error";
		int flag = recipeService.cookDelete(recipeBoard);
		if(flag != 0)
		{
			path="index";
		}
		return path;
	}
	@RequestMapping("/recipe_CustomWriteUP.scv")
	public String recipe_CustomWriteUP(Custom_boardVO obj)
	{
		System.out.println("RecipeCtrl recipe_CustomWriteUP");
		String path="error";
		int flag = recipeService.customWriteUP(obj);
		if(flag != 0)
		{
			path="redirect:/recipe_CustomerCenter.scv";
		}
		return path;
	}
	
	@RequestMapping("/recipe_Ranking.scv")
	public String recipe_Ranking(Recipe_FunctionVO recipeBoard,Model model){		
		System.out.println("RecipeCtrl recipeRanking");
		ArrayList<Recipe_FunctionVO> searchRank= recipeService.searchRank(recipeBoard);
		model.addAttribute("ranking",searchRank);			
		return "recipe_topmenu";
	}
	
	@RequestMapping("/recipe_NoticeView.scv")
	public String recipe_NoticeView(Notice_boardVO obj,Model model)
	{
		System.out.println("RecipeCtrl recipe_NoticeView");
		Notice_boardVO result = recipeService.noticeView(obj);
		model.addAttribute("NoticeViewer",result);
		return "recipe_noticeView";
	}
	@RequestMapping("/recipe_CustomView.scv")
	public String recipe_CustomView(Custom_boardVO obj,Model model)
	{
		System.out.println("RecipeCtrl recipe_CustomView");
		Custom_boardVO result = recipeService.customView(obj);
		model.addAttribute("customViewer",result);
		return "recipe_customView";
	}
	@RequestMapping("/recipe_replySelect.scv")
	public String replyClipRow(Recipe_replyVO recipeBoard, Model model)
	{
		System.out.println("RecipeCtrl replyClipRow");
		Recipe_replyVO vo = new Recipe_replyVO();
		ArrayList<Recipe_replyVO> replyResult = recipeService.replyClipRow(vo);
		model.addAttribute("replyList",replyResult);
		return "recipe_CookView";
	}
	@RequestMapping("/recipe_replyInsert.scv")
	public String replyRow(Recipe_replyVO obj, HttpServletRequest request,Model model) throws Exception {
		
		//System.out.println("obj :" + obj.getUser_id());
		System.out.println("RecipeCtrl replyRow");
		String recipeKateName=new String(URLDecoder.decode(request.getParameter("reply"),"utf-8"));
		obj.setReply(recipeKateName);
		System.out.println(obj.getReply());
		String uid[] = obj.getUser_id().split(",");
		obj.setUser_id(uid[0]);
		System.out.println("uid : " + obj.getUser_id());
		//int status=0;
		int flag = recipeService.replyRow(obj);
		//flag 값은 처리된 행 갯수를 의미함
		
		ArrayList<Recipe_replyVO> replyResult = null;
		Write_BoardVO result = null;
		if(flag != 0) //댓글달기 성공시
		{
			result = recipeService.cookView(new Write_BoardVO(obj.getRecipe_board_num()));
			model.addAttribute("cookView",result);
			replyResult = recipeService.replyClipRow(obj);
			model.addAttribute("replyList",replyResult);			
		}
		return "recipe_CookView";
	}
	@RequestMapping(value = "/recipe_love.scv")
	public @ResponseBody String recipe_love(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("RecipeFunctionCtrl recipe_cookView_good");
		System.out.println("user_id : " + request.getParameter("user_id"));
		System.out.println("recipe_board_num : " + request.getParameter("recipe_board_num"));
		try {
			Recipe_FunctionVO obj = new Recipe_FunctionVO(Integer.parseInt(request.getParameter("recipe_board_num")), request.getParameter("user_id"));
			// 기존에 아이디와 페시피번호가 기록되어 있지 않을 경우에만 insert 처리 작동되게 처리해야 함
			// ================

			/*
			if (!=null) {
				int flag =recipeService.loveHateInsert(obj);
				System.out.println("flag : " + flag);
			}
			*/
			Recipe_FunctionVO like_count = recipeService.loveCount(obj);
			System.out.println("like_count: " + like_count.getCount());
			
			
			if(Integer.parseInt(like_count.getCount())!=1){
				System.out.println("insert");
				//insert
				int insert_like = recipeService.loveHateInsert(obj);
				//select
				Recipe_FunctionVO likeNum = recipeService.loveNum(obj);
				System.out.println("hit: " + likeNum.getCount());

				PrintWriter ajaxOut = response.getWriter();

				JSONObject jobj = new JSONObject();
				jobj.accumulate("likeNum", likeNum.getCount());
				jobj.accumulate("isInsert", "Y");

				ajaxOut.print(jobj.toString());
				ajaxOut.flush();
				ajaxOut.close();
			}
			else{
				System.out.println("select");
				//select 
				Recipe_FunctionVO likeNum = recipeService.loveNum(obj);
				System.out.println("hit: " + likeNum.getCount());

				
				PrintWriter ajaxOut = response.getWriter();

				JSONObject jobj = new JSONObject();
				jobj.accumulate("likeNum", likeNum.getCount());
				jobj.accumulate("isInsert", "N");

				ajaxOut.print(jobj.toString());
				ajaxOut.flush();
				ajaxOut.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "recipe_CookView";
	}

	@RequestMapping(value = "/recipe_hate.scv")
	public @ResponseBody String recipe_hate(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("RecipeFunctionCtrl recipe_cookView_bad");
		System.out.println("user_id : " + request.getParameter("user_id"));
		System.out.println("recipe_board_num : " + request.getParameter("recipe_board_num"));
		try {
			Recipe_FunctionVO obj = new Recipe_FunctionVO(Integer.parseInt(request.getParameter("recipe_board_num")), request.getParameter("user_id"));
			// 기존에 아이디와 페시피번호가 기록되어 있지 않을 경우에만 insert 처리 작동되게 처리해야 함
			// ================
			
			/*
			if (!=null) {
				int flag =recipeService.loveHateInsert(obj);
				System.out.println("flag : " + flag);
			}
			*/
			Recipe_FunctionVO hate_count = recipeService.hateCount(obj);
			System.out.println("hate_count: " + hate_count.getCount());
			
			
			if(Integer.parseInt(hate_count.getCount())!=1){
				System.out.println("insert");
				//insert
				int insert_hate = recipeService.HateInsert(obj);
				//select
				Recipe_FunctionVO hateNum = recipeService.hateNum(obj);
				System.out.println("hit: " + hateNum.getCount());

				PrintWriter ajaxOut = response.getWriter();

				JSONObject jobj = new JSONObject();
				jobj.accumulate("hateNum", hateNum.getCount());
				jobj.accumulate("isInsert", "Y");

				ajaxOut.print(jobj.toString());
				ajaxOut.flush();
				ajaxOut.close();
			}
			else{
				System.out.println("select");
				//select 
				Recipe_FunctionVO hateNum = recipeService.hateNum(obj);
				System.out.println("hit: " + hateNum.getCount());

				
				PrintWriter ajaxOut = response.getWriter();

				JSONObject jobj = new JSONObject();
				jobj.accumulate("hateNum", hateNum.getCount());
				jobj.accumulate("isInsert", "N");

				ajaxOut.print(jobj.toString());
				ajaxOut.flush();
				ajaxOut.close();
			}
	
		} catch (Exception e) {

		}
		return "recipe_CookView";
	}
	
}
