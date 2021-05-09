package com.hotel.dao.impl;
import org.springframework.stereotype.Repository;

import com.hotel.base.dao.impl.BaseDaoImpl;
import com.hotel.dao.SuggestDao;
import com.hotel.model.Suggest;
import com.hotel.utils.Pager;

@Repository("suggestDao")
@SuppressWarnings("unchecked")
public  class SuggestDaoImpl  extends BaseDaoImpl<Suggest>  implements SuggestDao{

    /* (非 Javadoc)
     * Description:
     * @see com.hotel.dao.SuggestDao#listAll()
     */
    @Override
    public Pager<Suggest> listAll() {
        // TODO Auto-generated method stub
        String hql = "from Suggest ";
        return  findByAlias(hql, null);
    }
	
		
}
