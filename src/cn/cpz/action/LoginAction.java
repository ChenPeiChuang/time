package cn.cpz.action;

//import org.apache.struts2.interceptor.validation.SkipValidation;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;



import org.apache.struts2.interceptor.validation.SkipValidation;

import cn.cpz.entity.Mcalss;
import cn.cpz.entity.User;
import cn.cpz.service.MclassService;
import cn.cpz.service.UserService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/* 员工管理的action类
 * */
public class LoginAction extends ActionSupport implements ModelDriven<User>{

	private static final long serialVersionUID = 1L;
	//模型驱动使用的对象
	private User user = new User();
	
	@Override
	public User getModel() {
		return user;
	}

	//注入业务层类（属性注入）
	private UserService userService;
	private MclassService mclassService;
	
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	public void setMclassService(MclassService mclassService) {
		this.mclassService = mclassService;
	}
	
	public String login(){
		System.out.println("login------------"+user.getUserName());//测试
		//调用业务层的类
		User existUser = userService.login(user);
		if (existUser == null){
			//登录失败
			this.addActionError("信息有误，请仔细核对^o^!");
			return INPUT;
		}else{
			//登录成功,将用户保存在session中
			ServletActionContext.getRequest().getSession().setAttribute("existUser", existUser);
			if (user.getPower() == 1){//管理员登录跳转到管理员页面
				return "adminLogin_sucess";
			}else{	//普通用户登录跳转至普通用户页面
				List<Mcalss> list = mclassService.findAllClass();
				ActionContext.getContext().getValueStack().set("allClass", list);
				return SUCCESS;
			}
		}
	}
	/*注销登录*/
	@SkipValidation
	public String logout(){
		HttpSession session = ServletActionContext.getRequest().getSession();
		if (session.getAttribute("existUser") != null){
			session.removeAttribute("existUser");
		}
		return INPUT;
	}
	/*注册页面*/
	public String registerUI(){
		return "registerUI";
	}
	/*执行注册操作*/
	public String register(){
		//查找是否已存在账号
		User exist = userService.findUser(user);
		ServletActionContext.getRequest().getSession().setAttribute("registerSuccess","注册成功！请登录");
		if (exist == null){
			userService.save(user);
			return INPUT;
		}else{
			this.addActionError("该用户名已经存在！");
			return "registerUI";
		}
	}
}
