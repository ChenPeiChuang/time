package cn.cpz.service;

import cn.cpz.entity.User;

public interface UserService {

	User login(User user);//service��¼�ӿ�

	void save(User user);//serviceע��ӿ�

	User findUser(User user);//service�û���ѯ�ӿ�
	
}
