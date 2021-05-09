package com.hotel.dao;

import java.util.List;

import com.hotel.base.dao.BaseDao;
import com.hotel.model.Room;
import com.hotel.utils.Pager;


public interface RoomDao extends BaseDao<Room>{

    Pager<Room> listAll();

    Room roomDetail(int roomId);
    
    Pager<Room> listAllChangeRoom();

	List<Room> roomInfo(String roomCatName);

    /**
     * @Description (TODO这里用一句话描述这个方法的作用)
     * @param id
     * @return
     */
   // List<Room> roomInfo(int id);


}
