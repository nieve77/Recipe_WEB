package recipe.user.vo;

public class UserVO {
	private String user_id, user_name, nickname, pwd, cellphone, birth_date, gender, mail, user_division;

	
	public UserVO() {
	}


	public UserVO(String user_id, String user_name, String nickname, String pwd, String cellphone, String birth_date,
			String gender, String mail, String user_division) {
		super();
		this.user_id = user_id;
		this.user_name = user_name;
		this.nickname = nickname;
		this.pwd = pwd;
		this.cellphone = cellphone;
		this.birth_date = birth_date;
		this.gender = gender;
		this.mail = mail;
		this.user_division = user_division;
	}


	public String getUser_id() {
		return user_id;
	}


	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}


	public String getUser_name() {
		return user_name;
	}


	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}


	public String getNickname() {
		return nickname;
	}


	public void setNickname(String nickname) {
		this.nickname = nickname;
	}


	public String getPwd() {
		return pwd;
	}


	public void setPwd(String pwd) {
		this.pwd = pwd;
	}


	public String getCellphone() {
		return cellphone;
	}


	public void setCellphone(String cellphone) {
		this.cellphone = cellphone;
	}


	public String getBirth_date() {
		return birth_date;
	}


	public void setBirth_date(String birth_date) {
		this.birth_date = birth_date;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getMail() {
		return mail;
	}


	public void setMail(String mail) {
		this.mail = mail;
	}


	public String getUser_division() {
		return user_division;
	}


	public void setUser_division(String user_division) {
		this.user_division = user_division;
	}
	
}
