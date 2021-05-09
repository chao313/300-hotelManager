package com.hotel.service;

import com.hotel.model.Mistake;
import com.hotel.utils.Pager;


public interface MistakeService {

	Pager<Mistake> listAll();

	void add(Mistake mistake);

	void delMistake(int mistake);

	Mistake load(int mistakeId);

	void update(Mistake mistake);


	
}
