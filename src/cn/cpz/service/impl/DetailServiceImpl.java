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
	/*ҵ����ҳ��ѯѧ���ķ���*/
	public PageBean<Detail> findByPage(int currPage) {
		//����pageBean����
		PageBean<Detail> pageBean = new PageBean<Detail>();
		//��װ��ǰҳ��
		pageBean.setCurrPage(currPage);
		//��װÿҳ��¼��
		int pageSize = 3;//ÿҳ��ʾ����
		pageBean.setPageSize(pageSize);
		//��װ�ܼ�¼��
		int totalCount = detailDao.findCount();
		pageBean.setTotalCount(totalCount);
		//��װ��ҳ��
		double tc = totalCount;//��totalCountת��Ϊ˫������
		Double num = Math.ceil(tc / pageSize);
		pageBean.setTotalPage(num.intValue());//���������ҳ��ת��Ϊ���Ͳ��浽pageBean��
		//��װÿҳ��ʾ������
		int begin = (currPage - 1) * pageSize;//����ÿҳ��һ����¼���±�
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
