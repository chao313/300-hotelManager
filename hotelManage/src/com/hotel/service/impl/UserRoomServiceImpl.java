package com.hotel.service.impl;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hotel.dao.NeedDao;
import com.hotel.dao.UserRoomDao;
import com.hotel.dto.MoneyDto;
import com.hotel.model.Need;
import com.hotel.model.UserRoom;
import com.hotel.service.NeedService;
import com.hotel.service.UserRoomService;
import com.hotel.utils.Pager;

@Service("userRoomService")
public class UserRoomServiceImpl implements UserRoomService {
     @Autowired
     private UserRoomDao userRoomDao;

    @Override
    public Pager<UserRoom> listAllUserRoom() {
        // TODO Auto-generated method stub
        return userRoomDao.listAllUserRoom();
    }


    @Override
    public void delUserRoom(int id) {
        // TODO Auto-generated method stub
        userRoomDao.deleteInfo(id);
    }


    @Override
    public void addUserRoom(UserRoom userRoom) {
        // TODO Auto-generated method stub
        userRoomDao.add(userRoom);
    }


    /* (非 Javadoc)
     * Description:
     * @see com.hotel.service.UserRoomService#listAll(java.lang.String)
     */
    @Override
    public List<MoneyDto> listAll(String userName) {
        if(userName == null || "".equals(userName)){
            return userRoomDao.listAll();
        }else{
            return userRoomDao.listByName(userName);
        }
    }


    /* (非 Javadoc)
     * Description:
     * @see com.hotel.service.UserRoomService#listAllRoom(java.lang.String)
     */
    @Override
    public List<MoneyDto> listAllRoom(String userName) {
        // TODO Auto-generated method stub
        if(userName == null || "".equals(userName)){
            return userRoomDao.listAllRoom();
        }else{
            return userRoomDao.listByNameRoom(userName);
        }
    }




}
