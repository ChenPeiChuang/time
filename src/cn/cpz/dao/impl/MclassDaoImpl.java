package cn.cpz.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.cpz.dao.MclassDao;
import cn.cpz.entity.Mcalss;

public class MclassDaoImpl extends HibernateDaoSupport implements MclassDao {
	/*��ѯ���а༶*/
	@Override
	public List<Mcalss> findAllClass() {
		String hql = "from Mcalss";
		return this.getHibernateTemplate().find(hql);
	}

}
