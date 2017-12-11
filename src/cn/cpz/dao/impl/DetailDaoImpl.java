package cn.cpz.dao.impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.cpz.dao.DetailDao;
import cn.cpz.entity.Detail;

public class DetailDaoImpl extends HibernateDaoSupport implements DetailDao {

	@Override
	public List<Detail> findAll() {
		String hql = "from Detail";
		return this.getHibernateTemplate().find(hql);
	}
	@Override
	public List<Detail> findById(Integer classId) {
		String hql = "from Detail where mcalss.classId="+classId;
		return this.getHibernateTemplate().find(hql);
	}
	public int findCount() {
		String hql = "select count(*) from Detail";
		List<Long> list = this.getHibernateTemplate().find(hql);
		if (list.size() > 0){
			return list.get(0).intValue();//Long×ª»»Îªint
		}
		return 0;
	}
	@Override
	public List<Detail> findByPage(int begin, int pageSize) {
		System.out.println("test-------------------------");
		DetachedCriteria criteria = DetachedCriteria.forClass(Detail.class);
		List<Detail> list = this.getHibernateTemplate().findByCriteria(criteria, begin, pageSize);
		System.out.println(list.get(0).getCourseName()+"--------------------------");
		return list;
	}
	@Override
	public Detail find(Integer id) {
		Detail det = this.getHibernateTemplate().get(Detail.class, id);
		return det;
	}
	@Override
	public void update(Detail detail) {
		this.getHibernateTemplate().update(detail);
	}
	@Override
	public void delete(Detail detail) {
		this.getHibernateTemplate().delete(detail);
		
	}
	@Override
	public void save(Detail detail) {
		this.getHibernateTemplate().save(detail);
		
	}
	@Override
	public List<Detail> findByKey(String courseName) {
		System.out.println("-------------"+courseName);
		String hql = "from Detail where courseName like '%"+courseName+"%'";
		List<Detail> list = this.getHibernateTemplate().find(hql);
		if (list.size() > 0){
			return list;
		}
		return null;
	}
}
