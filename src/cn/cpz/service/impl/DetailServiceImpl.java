package cn.cpz.service.impl;



import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import cn.cpz.dao.DetailDao;
import cn.cpz.entity.Detail;
import cn.cpz.entity.PageBean;
import cn.cpz.service.DetailService;

@Transactional
public class DetailServiceImpl implements DetailService {
	private DetailDao detailDao;

	public void setDetailDao(DetailDao detailDao) {
		this.detailDao = detailDao;
	}
	
	@Override
	public List<Detail> findAll() {
		return detailDao.findAll();
	}

	@Override
	public List<Detail> findById(Integer classId) {
		return detailDao.findById(classId);
	}

	@Override
	/*业务层分页查询学生的方法*/
	public PageBean<Detail> findByPage(int currPage) {
		//创建pageBean对象
		PageBean<Detail> pageBean = new PageBean<Detail>();
		//封装当前页数
		pageBean.setCurrPage(currPage);
		//封装每页记录数
		int pageSize = 3;//每页显示三条
		pageBean.setPageSize(pageSize);
		//封装总记录数
		int totalCount = detailDao.findCount();
		pageBean.setTotalCount(totalCount);
		//封装总页数
		double tc = totalCount;//将totalCount转换为双精度型
		Double num = Math.ceil(tc / pageSize);
		pageBean.setTotalPage(num.intValue());//将计算的总页数转换为整型并存到pageBean中
		//封装每页显示的数据
		int begin = (currPage - 1) * pageSize;//计算每页第一条记录的下标
		List<Detail> list = detailDao.findByPage(begin,pageSize);
		pageBean.setList(list);
		return pageBean;
	}

	@Override
	public Detail find(Integer id) {
		return detailDao.find(id);
	}

	@Override
	public void update(Detail detail) {
		detailDao.update(detail);
	}

	@Override
	public void delete(Detail detail) {
		detailDao.delete(detail);
	}

	@Override
	public void save(Detail detail) {
		detailDao.save(detail);
	}

	@Override
	public List<Detail> findByKey(String courseName) {
		return detailDao.findByKey(courseName);
	}

}
