package cn.cpz.service.impl;

import org.springframework.transaction.annotation.Transactional;

import cn.cpz.dao.UserDao;
import cn.cpz.entity.User;
import cn.cpz.service.UserService;
/**用户业务管理实现类
 * **/
@Transactional
public class UserServiceImpl implements UserService{
	private UserDao userDao;
	
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	/**业务层登录的方法
	 * **/
	public User login(User user) {
		User existUser = userDao.login(user);
		return existUser;
	}
	/**业务层注册的方法
	 * **/
	@Override
	public void save(User user) {
		userDao.save(user);
	}
	/**业务层查找用户的方法
	 * **/
	@Override
	public User findUser(User user) {
		return userDao.findUser(user);
	}

}

