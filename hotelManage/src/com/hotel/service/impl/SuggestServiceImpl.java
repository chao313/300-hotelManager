package com.hotel.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.hotel.dao.SuggestDao;
import com.hotel.model.Suggest;
import com.hotel.service.SuggestService;
import com.hotel.utils.Pager;

@Service("suggestService")
public class SuggestServiceImpl implements SuggestService {

    @Autowired
    private SuggestDao  suggestDao;
    @Override
    public void add(Suggest suggest) {
        // TODO Auto-generated method stub
        suggestDao.add(suggest);
    }
    /* (非 Javadoc)
     * Description:
     * @see com.hotel.service.SuggestService#listAll()
     */
    @Override
    public Pager<Suggest> listAll() {
        // TODO Auto-generated method stub
        return  suggestDao.listAll();
    }
    
}
