package com.hotel.service;

import com.hotel.model.Buy;
import com.hotel.utils.Pager;


public interface BuyService {

	Pager<Buy> listAll();

	void add(Buy buy);

	void delBuy(int buyId);

	Buy load(int buyId);

	void update(Buy buy);


	
}
