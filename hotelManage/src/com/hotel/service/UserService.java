package com.hotel.service;
import java.util.List;

import com.hotel.model.User;
import com.hotel.utils.Pager;

public interface UserService {
	public List<User> listAllCanSendUser(int userId);

	public void add(User user);

	public User load(User user);

	public User getUser(int userId);

	public List<User> findFriend(String userName, int myId);

	public User loadUserById(int userId);

	public Pager<User> listAll(String userName);

	public void delUse(int userId);

	public List<User> findSYuser();

	public List<User> findBYuser();

    /**
     * @Description (TODO这里用一句话描述这个方法的作用)
     * @return
     */
    public Pager<User> listAll();

    /**
     * @Description (TODO这里用一句话描述这个方法的作用)
     * @param userId
     * @return 
     */
    public User userDetail(int userId);

}
