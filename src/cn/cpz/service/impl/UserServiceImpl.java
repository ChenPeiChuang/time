package cn.cpz.service.impl;

import org.springframework.transaction.annotation.Transactional;

import cn.cpz.dao.UserDao;
import cn.cpz.entity.User;
import cn.cpz.service.UserService;
/**�û�ҵ�����ʵ����
 * **/
@Transactional
public class UserServiceImpl implements UserService{
	private UserDao userDao;
	
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	/**ҵ����¼�ķ���
	 * **/
	public User login(User user) {
		User existUser = userDao.login(user);
		return existUser;
	}
	/**ҵ���ע��ķ���
	 * **/
	@Override
	public void save(User user) {
		userDao.save(user);
	}
	/**ҵ�������û��ķ���
	 * **/
	@Override
	public User findUser(User user) {
		return userDao.findUser(user);
	}

}

