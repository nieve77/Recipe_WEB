package recipe.user.sql;

import java.util.ArrayList;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Repository;

import recipe.board.vo.Recipe_replyVO;
import recipe.user.vo.UserVO;

@Repository("userDao")//@Repository 의미: 저장소 역활을 하는 객체, Dao등
public class UserDao {

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
	
	public UserDao() {
		session = factory.openSession(true) ; //true를 하는 이유 : 그래야 자동으로 갱신된다. 
	}

	public UserVO loginRow(UserVO obj)
	{
		System.out.println("UserDao loginRow");
		return session.selectOne("user.login",obj);
	}
	
	public int joinRow(UserVO obj)
	{
		System.out.println("UserDao joinRow");
		return session.insert("user.join",obj);
	}
	public UserVO searchRow(UserVO obj)
	{
		System.out.println("UserDao searchRow");
		return session.selectOne("user.search",obj);
	}
	public int modifyRow(UserVO obj)
	{
		System.out.println("UserDao modifyRow");
		return session.update("user.update",obj);
	}
	public int deleteRow(UserVO obj)
	{
		System.out.println("UserDao deleteRow");
		return session.delete("user.delete",obj);
	}
}
