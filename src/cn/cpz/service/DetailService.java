package cn.cpz.service;

import java.util.List;

import cn.cpz.entity.Detail;
import cn.cpz.entity.PageBean;

public interface DetailService {

	List<Detail> findAll();//ҵ����ѯ���пγ̱�
	
	List<Detail> findById(Integer classId);//ͨ��ID��ѯ�γ̱�

	PageBean<Detail> findByPage(int currPage);//ҵ����ҳ��ѯ���пγ̱�

	Detail find(Integer id);//ͨ����Ų�ѯ�α�Ϊ�޸���׼��

	void update(Detail detail);//�����޸���Ϣ

	void delete(Detail detail);//ִ��ɾ���α�

	void save(Detail detail);//ִ���޸Ŀγ̱�

	List<Detail> findByKey(String courseName);//ͨ���γ���ģ����ѯ�γ�

}
