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
	/*模型驱动*/
	private Detail detail = new Detail();
	@Override
	public Detail getModel() {
		return detail;
	}
	/*属性注入*/
	private DetailService detailService;
	private MclassService mclassService;
	
	public void setDetailService(DetailService detailService) {
		this.detailService = detailService;
	}
	public void setMclassService(MclassService mclassService) {
		this.mclassService = mclassService;
	}
	//接受当前页数
	private int currPage = 1;//默认显示第一页
				
	public void setCurrPage(int currPage) {
		this.currPage = currPage;
	}
	/*查找班级课程表*/
	public String findDetail(){
		System.out.println("测试----------");
		System.out.println(detail.getMcalss().getClassId()+"---------------");
		List<Detail> det = detailService.findById(detail.getMcalss().getClassId());
		ActionContext.getContext().getValueStack().set("det",det);
		return SUCCESS;
	}
	/*查询所有课程表*/
	public String findAll(){
		PageBean<Detail> pageBean = detailService.findByPage(currPage);
		ActionContext.getContext().getValueStack().push(pageBean);
		List<Mcalss> detList = mclassService.findAllClass();
		ActionContext.getContext().getValueStack().set("ac",detList);
		return "findAll_success";
	}
	/*跳转至修改课程页面*/
	public String updateUI(){
		detail = detailService.find(detail.getId());
		return "updateUI_success";
	}
	/*执行修改的方法*/
	public String update(){
		detailService.update(detail);
		return "update_success";
	}
	/*执行删除操作*/
	public String delete(){
		detail = detailService.find(detail.getId());
		detailService.delete(detail);
		return "delete_success";
	}
	/*跳转至添加页面*/
	public String insertUI(){
		List<Mcalss> ac = mclassService.findAllClass();
		ActionContext.getContext().getValueStack().set("ac",ac);
		return "insertUI_success";
	}
	/*执行添加操作*/
	public String save(){
		detailService.save(detail);
		return "save_success";
	}
	/*通过班级查课程*/
	public String findByKey(){
		List<Detail> det = detailService.findById(detail.getMcalss().getClassId());
		ActionContext.getContext().getValueStack().set("det",det);
		return "findClass_success";
	}
}
