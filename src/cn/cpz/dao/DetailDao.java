package cn.cpz.dao;

import java.util.List;

import cn.cpz.entity.Detail;

public interface DetailDao {

	List<Detail> findAll();

	List<Detail> findById(Integer classId);

	int findCount();

	List<Detail> findByPage(int begin, int pageSize);

	Detail find(Integer id);

	void update(Detail detail);

	void delete(Detail detail);

	void save(Detail detail);

	List<Detail> findByKey(String courseName);

}
