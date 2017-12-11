package cn.cpz.service;

import java.util.List;

import cn.cpz.entity.Detail;
import cn.cpz.entity.PageBean;

public interface DetailService {

	List<Detail> findAll();//业务层查询所有课程表
	
	List<Detail> findById(Integer classId);//通过ID查询课程表

	PageBean<Detail> findByPage(int currPage);//业务层分页查询所有课程表

	Detail find(Integer id);//通过编号查询课表，为修改做准备

	void update(Detail detail);//保存修改信息

	void delete(Detail detail);//执行删除课表

	void save(Detail detail);//执行修改课程表

	List<Detail> findByKey(String courseName);//通过课程名模糊查询课程

}
