package com.hotel.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.hotel.base.dao.impl.BaseDaoImpl;
import com.hotel.dao.RoomDao;
import com.hotel.model.Book;
import com.hotel.model.Manage;
import com.hotel.model.Room;
import com.hotel.utils.Pager;


@Repository("roomDao")
@SuppressWarnings("unchecked")
public class RoomDaoImpl extends BaseDaoImpl<Room> implements RoomDao {

  
    @Override
    public Pager<Room> listAll() {
        String hql = "from Room ";
        return  findByAlias(hql, null);
    }

    @Override
    public Room roomDetail(int roomId) {
        String hql = "from Room bean where bean.id=:roomId";
        Query q =this.getSession().createQuery(hql);
        q.setParameter("roomId", roomId);
        return (Room) q.uniqueResult();
    }

   
    @Override
    public Pager<Room> listAllChangeRoom() {
        String hql = "from Room bean where bean.isLive=2 ";
        Query q =this.getSession().createQuery(hql);
        return  findByAlias(hql, null);
    }
 
	@Override
	public List<Room> roomInfo(String roomCatName) {
		String hql = "from Room bean where bean.isLive=1  and  bean.room_cat.roomCatName=:roomCatName ";
        Query q =this.getSession().createQuery(hql);
        q.setParameter("roomCatName", roomCatName);
        return q.list();
        
	}

    /* (非 Javadoc)
     * Description:
     * @see com.hotel.dao.RoomDao#roomInfo(int)
     */
//    @Override
//    public List<Room> roomInfo(int id) {
//        String hql = "from Room bean where bean.isLive=1  and  room.room_cat.id=:id ";
//      Query q =this.getSession().createQuery(hql);
//      q.setParameter("id", id);
//      return (List<Room>) q.uniqueRe   @Override
//    public List<Book> roomInfo(String roomCatName) {
//        String hql = "from Book bean where bean.room.isLive=1  and  bean.room.room_cat.roomCatName=:roomCatName ";
//        Query q =this.getSession().createQuery(hql);
//        q.setParameter("roomCatName", roomCatName);
//        return q.list();
//    }sult();
//    }

// 
    
}
