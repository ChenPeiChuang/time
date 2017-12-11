package cn.cpz.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.cpz.dao.UserDao;
import cn.cpz.entity.User;
/**用户管理DAO实现类
 * */
public class UserDaoImpl extends HibernateDaoSupport implements UserDao{

	@Override
	/**DAO中登录验证的方法
	 * */
	public User login(User user) {
		String hql = "from User where userName='"+user.getUserName()+"' and userPassword='"+user.getUserPassword()+"' and power="+user.getPower()+" and status=1";
		List<User> list = this.getHibernateTemplate().find(hql);
		if (list.size() > 0){
			return list.get(0);//登录成功返回对象
		}
		return null;//登录失败返回空
	}
	/**DAO中注册的方法
	 * */
	@Override
	public void save(User user) {
		this.getHibernateTemplate().save(user);
	}
	/**DAO中查找用户的方法--注册
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
