package com.hotel.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hotel.dao.UserDao;
import com.hotel.model.User;
import com.hotel.service.UserService;
import com.hotel.utils.Pager;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userdao;
    
	@Override
	public List<User> listAllCanSendUser(int userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void add(User user) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public User load(User user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User getUser(int userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<User> findFriend(String userName, int myId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User loadUserById(int userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Pager<User> listAll(String userName) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void delUse(int userId) {
	    User u =userdao.load(userId);
        u.setIsDelete(1);
        userdao.update(u);
		
	}

	@Override
	public List<User> findSYuser() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<User> findBYuser() {
		// TODO Auto-generated method stub
		return null;
	}

    /* (非 Javadoc)
     * Description:
     * @see com.hotel.service.UserService#listAll()
     */
    @Override
    public Pager<User> listAll() {
        // TODO Auto-generated method stub
        return userdao.listAll();
    }


    /* (非 Javadoc)
     * Description:
     * @see com.hotel.service.UserService#userDetail(int)
     */
    @Override
    public User userDetail(int userId) {
        // TODO Auto-generated method stub
        return userdao.userDetail(userId);
    }
	

}
