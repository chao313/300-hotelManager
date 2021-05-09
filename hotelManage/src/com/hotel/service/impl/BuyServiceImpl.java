package com.hotel.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.hotel.dao.BuyDao;
import com.hotel.model.Buy;
import com.hotel.service.BuyService;
import com.hotel.utils.Pager;

@Service("buyService")
public class BuyServiceImpl implements BuyService {
     @Autowired
	 private BuyDao buyDao;

	@Override
	public Pager<Buy> listAll() {
		// TODO Auto-generated method stub
		return buyDao.listAll();
	}

	@Override
	public void add(Buy buy) {
		// TODO Auto-generated method stub
		buyDao.add(buy);
	}

	@Override
	public void delBuy(int buyId) {
		// TODO Auto-generated method stub
		buyDao.delete(buyId);
	}

	@Override
	public Buy load(int buyId) {
		// TODO Auto-generated method stub
		return buyDao.load( buyId);
	}

	@Override
	public void update(Buy buy) {
		// TODO Auto-generated method stub
		buyDao.update(buy);
	}

}
