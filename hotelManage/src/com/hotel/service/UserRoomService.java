package com.hotel.service;

import java.util.List;

import com.hotel.dto.MoneyDto;
import com.hotel.model.UserRoom;
import com.hotel.utils.Pager;



public interface UserRoomService {

	Pager<UserRoom> listAllUserRoom();

    /**
     * @Description (TODO这里用一句话描述这个方法的作用)
     * @param id
     */
    void delUserRoom(int id);

    /**
     * @Description (TODO这里用一句话描述这个方法的作用)
     * @param userRoom
     */
    void addUserRoom(UserRoom userRoom);

    /**
     * @Description (TODO这里用一句话描述这个方法的作用)
     * @param userName
     * @return
     */
    List<MoneyDto> listAll(String userName);

    /**
     * @Description (TODO这里用一句话描述这个方法的作用)
     * @param userName
     * @return
     */
    List<MoneyDto> listAllRoom(String userName);



	
}
