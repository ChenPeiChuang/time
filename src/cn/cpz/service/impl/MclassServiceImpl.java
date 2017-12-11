package cn.cpz.service.impl;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import cn.cpz.dao.MclassDao;
import cn.cpz.entity.Mcalss;
import cn.cpz.service.MclassService;
@Transactional
public class MclassServiceImpl implements MclassService {
	private MclassDao mclassDao;
	
	public void setMclassDao(MclassDao mclassDao) {
		this.mclassDao = mclassDao;
	}

	@Override
	public List<Mcalss> findAllClass() {
		return mclassDao.findAllClass();
	}
	
}
