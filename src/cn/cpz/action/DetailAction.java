package cn.cpz.action;

import java.util.List;

import cn.cpz.entity.Detail;
import cn.cpz.entity.Mcalss;
import cn.cpz.entity.PageBean;
import cn.cpz.service.DetailService;
import cn.cpz.service.MclassService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class DetailAction extends ActionSupport implements ModelDriven<Detail> {
	
	private static final long serialVersionUID = 1L;
	/*ģ������*/
	private Detail detail = new Detail();
	@Override
	public Detail getModel() {
		return detail;
	}
	/*����ע��*/
	private DetailService detailService;
	private MclassService mclassService;
	
	public void setDetailService(DetailService detailService) {
		this.detailService = detailService;
	}
	public void setMclassService(MclassService mclassService) {
		this.mclassService = mclassService;
	}
	//���ܵ�ǰҳ��
	private int currPage = 1;//Ĭ����ʾ��һҳ
				
	public void setCurrPage(int currPage) {
		this.currPage = currPage;
	}
	/*���Ұ༶�γ̱�*/
	public String findDetail(){
		System.out.println("����----------");
		System.out.println(detail.getMcalss().getClassId()+"---------------");
		List<Detail> det = detailService.findById(detail.getMcalss().getClassId());
		ActionContext.getContext().getValueStack().set("det",det);
		return SUCCESS;
	}
	/*��ѯ���пγ̱�*/
	public String findAll(){
		PageBean<Detail> pageBean = detailService.findByPage(currPage);
		ActionContext.getContext().getValueStack().push(pageBean);
		List<Mcalss> detList = mclassService.findAllClass();
		ActionContext.getContext().getValueStack().set("ac",detList);
		return "findAll_success";
	}
	/*��ת���޸Ŀγ�ҳ��*/
	public String updateUI(){
		detail = detailService.find(detail.getId());
		return "updateUI_success";
	}
	/*ִ���޸ĵķ���*/
	public String update(){
		detailService.update(detail);
		return "update_success";
	}
	/*ִ��ɾ������*/
	public String delete(){
		detail = detailService.find(detail.getId());
		detailService.delete(detail);
		return "delete_success";
	}
	/*��ת�����ҳ��*/
	public String insertUI(){
		List<Mcalss> ac = mclassService.findAllClass();
		ActionContext.getContext().getValueStack().set("ac",ac);
		return "insertUI_success";
	}
	/*ִ����Ӳ���*/
	public String save(){
		detailService.save(detail);
		return "save_success";
	}
	/*ͨ���༶��γ�*/
	public String findByKey(){
		List<Detail> det = detailService.findById(detail.getMcalss().getClassId());
		ActionContext.getContext().getValueStack().set("det",det);
		return "findClass_success";
	}
}
