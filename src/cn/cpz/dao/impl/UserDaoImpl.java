package cn.cpz.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.cpz.dao.UserDao;
import cn.cpz.entity.User;
/**�û�����DAOʵ����
 * */
public class UserDaoImpl extends HibernateDaoSupport implements UserDao{

	@Override
	/**DAO�е�¼��֤�ķ���
	 * */
	public User login(User user) {
		String hql = "from User where userName='"+user.getUserName()+"' and userPassword='"+user.getUserPassword()+"' and power="+user.getPower()+" and status=1";
		List<User> list = this.getHibernateTemplate().find(hql);
		if (list.size() > 0){
			return list.get(0);//��¼�ɹ����ض���
		}
		return null;//��¼ʧ�ܷ��ؿ�
	}
	/**DAO��ע��ķ���
	 * */
	@Override
	public void save(User user) {
		this.getHibernateTemplate().save(user);
	}
	/**DAO�в����û��ķ���--ע��
	 * */
	@Override
	public User findUser(User user) {
		String hql = "from User where userName = '"+user.getUserName()+"'";
		List<User> list = this.getHibernateTemplate().find(hql);
		if (list.size() > 0){
			return list.get(0);
		}
		return null;
	}

}
