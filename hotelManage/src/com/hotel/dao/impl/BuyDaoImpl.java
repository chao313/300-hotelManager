package com.hotel.dao.impl;

import java.util.HashMap;
import java.util.Map;
import org.springframework.stereotype.Repository;
import com.hotel.base.dao.impl.BaseDaoImpl;
import com.hotel.dao.BuyDao;
import com.hotel.model.Buy;
import com.hotel.utils.Pager;
@Repository("buyDao")
@SuppressWarnings("unchecked")
public class BuyDaoImpl extends BaseDaoImpl<Buy>  implements BuyDao{

	@Override
	 public Pager<Buy> listAll() {
		 String hql = "from Buy";
       Map<String,Object> alias = new HashMap<String,Object>();
       return findByAlias(hql, null);
	}

	
	
}
