package recipe.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import recipe.user.sql.UserDao;
import recipe.user.vo.UserVO;

@Service("userService")
public class UserService {
	
	@Autowired
	private UserDao userDao;
	
	public UserVO login(UserVO obj)
	{
		System.out.println("UserService login");
		return userDao.loginRow(obj);
	}
	
	public int join(UserVO obj)
	{
		System.out.println("UserService join");
		return userDao.joinRow(obj);
	}
	public UserVO search(UserVO obj)
	{
		System.out.println("UserService search");
		return userDao.searchRow(obj);
	}
	public int modify(UserVO obj)
	{
		System.out.println("UserService search");
		return userDao.modifyRow(obj);
	}
	public int delete(UserVO obj)
	{
		System.out.println("UserService delete");
		return userDao.deleteRow(obj);
	}
}
