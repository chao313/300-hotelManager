package com.hotel.dao;

import java.util.List;

import com.hotel.base.dao.BaseDao;
import com.hotel.dto.MoneyDto;
import com.hotel.model.UserRoom;
import com.hotel.utils.Pager;

public interface UserRoomDao extends BaseDao<UserRoom>{

	Pager<UserRoom> listAllUserRoom();

    /**
     * @Description (TODO这里用一句话描述这个方法的作用)
     * @param id
     */
    void deleteInfo(int id);

    /**
     * @Description (TODO这里用一句话描述这个方法的作用)
     * @return
     */
    List<MoneyDto> listAll();

    /**
     * @Description (TODO这里用一句话描述这个方法的作用)
     * @param userName
     * @return
     */
    List<MoneyDto> listByName(String userName);

    /**
     * @Description (TODO这里用一句话描述这个方法的作用)
     * @return
     */
    List<MoneyDto> listAllRoom();

    /**
     * @Description (TODO这里用一句话描述这个方法的作用)
     * @param userName
     * @return
     */
    List<MoneyDto> listByNameRoom(String userName);




}
