package com.hotel.dao;


import com.hotel.base.dao.BaseDao;
import com.hotel.model.Suggest;
import com.hotel.utils.Pager;

public interface SuggestDao extends BaseDao<Suggest>{

    /**
     * @Description (TODO这里用一句话描述这个方法的作用)
     * @return
     */
    Pager<Suggest> listAll();
    
    
    
}
