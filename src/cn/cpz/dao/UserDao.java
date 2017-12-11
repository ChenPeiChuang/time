package cn.cpz.dao;

import cn.cpz.entity.User;
/**用户管理DAO接口
 * */
public interface UserDao {
	
	User login(User user);//DAO中执行登录的接口

	void save(User user);//DAO中执行注册的接口

	User findUser(User user);//DAO中查找用户的接口

}
