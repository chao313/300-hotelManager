package com.hotel.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;
import com.hotel.base.dao.impl.BaseDaoImpl;
import com.hotel.dao.UserItemDao;
import com.hotel.model.UserItem;
@Repository("userItemDao")
@SuppressWarnings("unchecked")
public class UserItemDaoImpl extends BaseDaoImpl<UserItem>  implements UserItemDao{

    @Override
    public List<UserItem> listAll() {
        String hql ="from UserItem bean where 1=1 ";
        return list(hql,null);
    }

    @Override
    public List<UserItem> listByName(String userName) {
        String hql = "from UserItem bean where  bean.user.userName like :userName";
        Map<String,Object> alias = new HashMap<String,Object>();
        alias.put("userName", "%" + userName + "%");
        return list(hql,alias);
    }



    
}
