package cn.cpz.dao;

import cn.cpz.entity.User;
/**�û�����DAO�ӿ�
 * */
public interface UserDao {
	
	User login(User user);//DAO��ִ�е�¼�Ľӿ�

	void save(User user);//DAO��ִ��ע��Ľӿ�

	User findUser(User user);//DAO�в����û��Ľӿ�

}
