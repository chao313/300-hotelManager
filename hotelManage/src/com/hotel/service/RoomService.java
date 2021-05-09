package com.hotel.service;

import java.util.List;

import com.hotel.model.Room;
import com.hotel.utils.Pager;

public interface RoomService {

    
    Pager<Room> listAll();

    void add(Room room);

    void delRoom(int roomId);

    Room roomDetail(int roomId);
    
    void update(Room room);

    Pager<Room> listAllChangeRoom();

	List<Room> roomInfo(String roomCatName);

    /**
     * @Description (TODO这里用一句话描述这个方法的作用)
     * @param roomId
     * @return
     */
    Room load(int roomId);

    /**
     * @Description (TODO这里用一句话描述这个方法的作用)
     * @param id
     * @return
     */
    //List<Room> roomInfo(int id);

}
