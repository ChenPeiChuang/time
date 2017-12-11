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

/* Ա�������action��
 * */
public class LoginAction extends ActionSupport implements ModelDriven<User>{

	private static final long serialVersionUID = 1L;
	//ģ������ʹ�õĶ���
	private User user = new User();
	
	@Override
	public User getModel() {
		return user;
	}

	//ע��ҵ����ࣨ����ע�룩
	private UserService userService;
	private MclassService mclassService;
	
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	public void setMclassService(MclassService mclassService) {
		this.mclassService = mclassService;
	}
	
	public String login(){
		System.out.println("login------------"+user.getUserName());//����
		//����ҵ������
		User existUser = userService.login(user);
		if (existUser == null){
			//��¼ʧ��
			this.addActionError("��Ϣ��������ϸ�˶�^o^!");
			return INPUT;
		}else{
			//��¼�ɹ�,���û�������session��
			ServletActionContext.getRequest().getSession().setAttribute("existUser", existUser);
			if (user.getPower() == 1){//����Ա��¼��ת������Աҳ��
				return "adminLogin_sucess";
			}else{	//��ͨ�û���¼��ת����ͨ�û�ҳ��
				List<Mcalss> list = mclassService.findAllClass();
				ActionContext.getContext().getValueStack().set("allClass", list);
				return SUCCESS;
			}
		}
	}
	/*ע����¼*/
	@SkipValidation
	public String logout(){
		HttpSession session = ServletActionContext.getRequest().getSession();
		if (session.getAttribute("existUser") != null){
			session.removeAttribute("existUser");
		}
		return INPUT;
	}
	/*ע��ҳ��*/
	public String registerUI(){
		return "registerUI";
	}
	/*ִ��ע�����*/
	public String register(){
		//�����Ƿ��Ѵ����˺�
		User exist = userService.findUser(user);
		ServletActionContext.getRequest().getSession().setAttribute("registerSuccess","ע��ɹ������¼");
		if (exist == null){
			userService.save(user);
			return INPUT;
		}else{
			this.addActionError("���û����Ѿ����ڣ�");
			return "registerUI";
		}
	}
}
