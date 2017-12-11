package cn.cpz.service;

import cn.cpz.entity.User;

public interface UserService {

	User login(User user);//service登录接口

	void save(User user);//service注册接口

	User findUser(User user);//service用户查询接口
	
}
