package com.hotel.service;

import com.hotel.model.Need;
import com.hotel.utils.Pager;


public interface NeedService {

	Pager<Need> listAll();

	void add(Need need);

	void delNeed(int needId);

	Need load(int needId);

	void update(Need need);


	
}
