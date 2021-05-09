package com.hotel.service;

import com.hotel.model.Suggest;
import com.hotel.utils.Pager;

public interface SuggestService {

    /**
     * @Description (TODO这里用一句话描述这个方法的作用)
     * @param suggest
     */
    void add(Suggest suggest);

    /**
     * @Description (TODO这里用一句话描述这个方法的作用)
     * @return
     */
    Pager<Suggest> listAll();

}
