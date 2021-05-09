package com.hotel.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;
import com.hotel.base.dao.impl.BaseDaoImpl;
import com.hotel.dao.UserDao;
import com.hotel.model.User;
import com.hotel.utils.Pager;

@Repository("userDao")
@SuppressWarnings("unchecked")
public class UserDaoImpl  extends BaseDaoImpl<User>  implements UserDao{

    /* (非 Javadoc)
     * Description:
     * @see com.hotel.dao.UserDao#listAll()
     */
    @Override
    public Pager<User> listAll() {
        String hql = "from User where 1=1 order by createTime desc";
        Map<String,Object> alias = new HashMap<String,Object>();
        return findByAlias(hql, null);
    }

    /* (非 Javadoc)
     * Description:
     * @see com.hotel.dao.UserDao#userDetail(int)
     */
    @Override
    public User userDetail(int userId) {
//        String hql = "from User bean where bean.id=:userId";
//        Map<String,Object> alias = new HashMap<String,Object>();
//        return  list(hql, null);
        String hql = "from User bean where bean.id=:userId";
        Query q =this.getSession().createQuery(hql);
        q.setParameter("userId", userId);
        return (User) q.uniqueResult();
    }

		
}
