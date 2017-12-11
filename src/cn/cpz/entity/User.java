package cn.cpz.entity;

public class User implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private Integer id;
	private String userName;
	private String userPassword;
	private String email;
	private Integer power;
	private Integer status;

	public User() {
	}

	public User(String userName, String userPassword, String email,
			Integer power, Integer status) {
		this.userName = userName;
		this.userPassword = userPassword;
		this.email = email;
		this.power = power;
		this.status = status;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPassword() {
		return this.userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Integer getPower() {
		return this.power;
	}

	public void setPower(Integer power) {
		this.power = power;
	}

	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

}