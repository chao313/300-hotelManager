package com.hotel.dao.impl;

import java.util.HashMap;
import java.util.Map;
import org.springframework.stereotype.Repository;
import com.hotel.base.dao.impl.BaseDaoImpl;
import com.hotel.dao.MistakeDao;
import com.hotel.model.Mistake;
import com.hotel.utils.Pager;
@Repository("mistakeDao")
@SuppressWarnings("unchecked")
public class MistakeDaoImpl extends BaseDaoImpl<Mistake>  implements MistakeDao{

	@Override
	public Pager<Mistake> listAll() {
		 String hql = "from Mistake";
	       Map<String,Object> alias = new HashMap<String,Object>();
	       return findByAlias(hql, null);
	}

	
	
}
