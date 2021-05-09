package com.hotel.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.hotel.dao.MistakeDao;
import com.hotel.model.Mistake;
import com.hotel.service.MistakeService;
import com.hotel.utils.Pager;

@Service("mistakeService")
public class MistakeServiceImpl implements MistakeService {
     @Autowired
	 private MistakeDao mistakeDao;

	@Override
	public Pager<Mistake> listAll() {
		// TODO Auto-generated method stub
		return mistakeDao.listAll();
	}

	@Override
	public void add(Mistake mistake) {
		// TODO Auto-generated method stub
		mistakeDao.add(mistake);
	}

	@Override
	public void delMistake(int mistakeId) {
		// TODO Auto-generated method stub
		mistakeDao.delete(mistakeId);
	}

	@Override
	public Mistake load(int mistakeId) {
		// TODO Auto-generated method stub
		return mistakeDao.load(mistakeId);
	}

	@Override
	public void update(Mistake mistake) {
		// TODO Auto-generated method stub
		 mistakeDao.update(mistake);
	}

}
