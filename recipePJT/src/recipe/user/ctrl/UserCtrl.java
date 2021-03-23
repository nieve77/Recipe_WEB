package recipe.user.ctrl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import recipe.user.service.UserService;
import recipe.user.vo.UserVO;

@Controller
@SessionAttributes("loginSession")
public class UserCtrl {

	@Autowired
	private UserService userService;
	
	@RequestMapping("/recipe_login.scv")
	public String login(UserVO obj,Model model) throws Exception {
		System.out.println("UserCtrl login");
		String path = "recipe_error_join";
		try {
			UserVO result = userService.login(obj);
			if(result != null)
			{
				model.addAttribute("loginSession",result);
				path = "redirect:/index.scv";
			}
		}catch(Exception e)
		{
			return path;
		}
		return path;
	}
	@RequestMapping("/index.scv")
	public String index()
	{
		System.out.println("UserCtrl indexPage");
		return "index";
	}
	
	@RequestMapping("/recipe_logout.scv")
	public String logout(SessionStatus status)
	{
		System.out.println("UserCtrl logout");
		status.setComplete();
		return "redirect:/index.scv";
	}
	
	@RequestMapping("/recipe_join_finally.scv")
	public String joinFin(UserVO obj,Model model) throws Exception {
		System.out.println("UserCtrl join_finally");
		String path ="recipe_error_join";
		try {
			int flag = userService.join(obj);
			if(flag !=0)
			{
				model.addAttribute("msg",obj.getUser_name());
				path="recipe_joinOK";
			}
		}catch(Exception e) {
			return path;
		}
		return path;
	}
	
	@RequestMapping("/recipe_searchID.scv")
	public @ResponseBody String recipe_searchID(UserVO obj, Model model)
	{
		System.out.println("UserCtrl recipe_searchID");
		UserVO result = userService.search(obj);
		/*System.out.println(para);*/
		if(result == null) { 
			return "null";
		}else {
			return result.getUser_id();
		}		
	}
	
	@RequestMapping("/recipe_Modify.scv")
	public String recipe_userModify(UserVO obj,Model model)
	{
		System.out.println("UserCtrl recipe_userModify");
		System.out.println(obj.getUser_id());
		int flag = userService.modify(obj);
		String path="error";
		if(flag != 0)
		{
			UserVO result = userService.login(obj);
			if(result != null)
			{
				model.addAttribute("loginSession",result);
				path="recipe_Modify";
			}
		}
		return path;
	}
	
	@RequestMapping("/recipe_Delete.scv")
	public String recipe_userDelete(UserVO obj,SessionStatus status)
	{
		System.out.println("UserCtrl recipe_userDelete");
		int flag = userService.delete(obj);
		String path="error";
		if(flag != 0)
		{
			status.setComplete();
			path="redirect:/index.scv";
		}
		return path;
	}
}
