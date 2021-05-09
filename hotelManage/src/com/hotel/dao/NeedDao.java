package com.hotel.dao;

import com.hotel.base.dao.BaseDao;
import com.hotel.model.Need;
import com.hotel.utils.Pager;

public interface NeedDao extends BaseDao<Need>{

	Pager<Need> listAll();


}
