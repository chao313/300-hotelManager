package com.hotel.service.impl;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.hotel.dao.NeedDao;
import com.hotel.model.Need;
import com.hotel.service.NeedService;
import com.hotel.utils.Pager;

@Service("needService")
public class NeedServiceImpl implements NeedService {
     @Autowired
	 private NeedDao needDao;

	@Override
	public Pager<Need> listAll() {
		// TODO Auto-generated method stub
		return needDao.listAll();
	}

	@Override
	public void add(Need need) {
		// TODO Auto-generated method stub
		 needDao.add(need);
	}

	@Override
	public void delNeed(int needId) {
		// TODO Auto-generated method stub
		needDao.delete(needId);
	}

	@Override
	public Need load(int needId) {
		// TODO Auto-generated method stub
		return needDao.load(needId);
	}

	@Override
	public void update(Need need) {
		// TODO Auto-generated method stub
		 needDao.update(need);
	}

}
