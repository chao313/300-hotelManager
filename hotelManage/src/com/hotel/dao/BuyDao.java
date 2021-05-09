package com.hotel.dao;

import com.hotel.base.dao.BaseDao;
import com.hotel.model.Buy;
import com.hotel.utils.Pager;

public interface BuyDao extends BaseDao<Buy>{

	Pager<Buy> listAll();


}
