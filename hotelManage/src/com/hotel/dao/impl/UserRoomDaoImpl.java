package com.hotel.dao.impl;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.hibernate.Query;
import org.hibernate.transform.Transformers;
import org.springframework.stereotype.Repository;
import com.hotel.base.dao.impl.BaseDaoImpl;
import com.hotel.dao.UserRoomDao;
import com.hotel.dto.MoneyDto;
import com.hotel.model.UserRoom;
import com.hotel.utils.Pager;
@Repository("userRoomDao")
@SuppressWarnings("unchecked")
public class UserRoomDaoImpl extends BaseDaoImpl<UserRoom>  implements UserRoomDao{

    @Override
    public Pager<UserRoom> listAllUserRoom() {
        String hql = "from UserRoom where 1=1";
        Map<String,Object> alias = new HashMap<String,Object>();
        return findByAlias(hql, null);
    }

    @Override
    public void deleteInfo(int id) {
        // TODO Auto-generated method stub
        String hql ="delete UserRoom bean where bean.room.id=:id ";
        Query qu = this.getSession().createQuery(hql);
        qu.setParameter("id", id);
        qu.executeUpdate();
    }

    
    @Override
    public List<MoneyDto> listAll() {
       String sql ="SELECT t.userName,rc.roomCatName, ic.cname,  rc.price, ic.price AS itemPrice, b.leaveTime,  b.reachTime,  b.roomNumber , r.id AS roomId , b.id AS bookId FROM  t_user t LEFT JOIN t_user_room tr ON t.id = tr.user_id LEFT JOIN t_user_item ti ON t.id = ti.user_id LEFT JOIN t_room r ON r.id = tr.room_id LEFT JOIN t_room_cat rc ON rc.id = r.room_cat_id LEFT JOIN t_item i ON i.id = ti.item_id LEFT JOIN t_item_cat ic ON ic.cid = i.cid LEFT JOIN t_book b ON b.user_id = t.id WHERE  t.isDelete = 2 AND r.isLive = 3 ";
        Query qu = this.getSession().createSQLQuery(sql);
        qu.setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP);
                List<Map<String,Object>>  list = qu.list();
                List<MoneyDto> moneyList=new ArrayList<MoneyDto>();
                for(Map<String,Object> map : list){
                    MoneyDto moneyDto=new MoneyDto();
                    moneyDto.setCname(String.valueOf(map.get("cname")));
                    if(map.get("price")!=null){
                        moneyDto.setPrice(Double.valueOf(map.get("price").toString()));
                    }
                    if(map.get("itemPrice")!=null){
                        moneyDto.setItemPrice(Double.valueOf(map.get("itemPrice").toString()));
                    }
                    SimpleDateFormat format =  new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
                    String reachTime=map.get("reachTime").toString();
                    String leaveTime=map.get("leaveTime").toString();
                    Date rTime =new Date();
                    Date lTime =new Date();
					try {
						rTime = (format.parse(reachTime));
						lTime = (format.parse(leaveTime));
					} catch (ParseException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					//System.out.println((lTime.getTime()-rTime.getTime()));
					double a=lTime.getTime()-rTime.getTime();
					//计算天数
					double day=a/(1000 * 60 * 60 * 24);
					//System.out.println(day);
					//System.out.println(Math.ceil(day));
					moneyDto.setDay(Math.ceil(day));
                    moneyDto.setLeaveTime(map.get("leaveTime").toString());
                    moneyDto.setReachTime(map.get("reachTime").toString());
                    moneyDto.setRoomCatName(String.valueOf(map.get("roomCatName")));
                    moneyDto.setRoomNumber(Integer.valueOf(map.get("roomNumber").toString()));
                    moneyDto.setUserName(String.valueOf(map.get("userName")));
                    moneyDto.setRoomId(Integer.valueOf(map.get("roomId").toString()));
                    moneyDto.setBookId(Integer.valueOf(map.get("bookId").toString()));
                    moneyList.add(moneyDto);
                }
                return moneyList;
    }


	@Override
    public List<MoneyDto> listByName(String userName) {
        String sql ="SELECT t.userName,rc.roomCatName, ic.cname,  rc.price, ic.price AS itemPrice, b.leaveTime,  b.reachTime,  b.roomNumber, r.id AS roomId , b.id AS bookId FROM  t_user t LEFT JOIN t_user_room tr ON t.id = tr.user_id LEFT JOIN t_user_item ti ON t.id = ti.user_id LEFT JOIN t_room r ON r.id = tr.room_id LEFT JOIN t_room_cat rc ON rc.id = r.room_cat_id LEFT JOIN t_item i ON i.id = ti.item_id LEFT JOIN t_item_cat ic ON ic.cid = i.cid LEFT JOIN t_book b ON b.user_id = t.id WHERE  t.isDelete = 2 AND r.isLive = 3 AND t.userName LIKE :name";
          Query qu = this.getSession().createSQLQuery(sql);
        qu.setParameter("name", userName);
        qu.setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP);
        List<Map<String,Object>>  list = qu.list();
        List<MoneyDto> moneyList=new ArrayList<MoneyDto>();
        for(Map<String,Object> map : list){
            MoneyDto moneyDto=new MoneyDto();
            moneyDto.setCname(String.valueOf(map.get("cname")));
            if(map.get("price")!=null){
                moneyDto.setPrice(Double.valueOf(map.get("price").toString()));
            }
            if(map.get("itemPrice")!=null){
                moneyDto.setItemPrice(Double.valueOf(map.get("itemPrice").toString()));
            }
            SimpleDateFormat format =  new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
            String reachTime=map.get("reachTime").toString();
            String leaveTime=map.get("leaveTime").toString();
            Date rTime =new Date();
            Date lTime =new Date();
			try {
				rTime = (format.parse(reachTime));
				lTime = (format.parse(leaveTime));
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			//System.out.println((lTime.getTime()-rTime.getTime()));
			double a=lTime.getTime()-rTime.getTime();
			//计算天数
			double day=a/(1000 * 60 * 60 * 24);
			//System.out.println(day);
			//System.out.println(Math.ceil(day));
			moneyDto.setDay(Math.ceil(day));
            moneyDto.setLeaveTime(map.get("leaveTime").toString());
            moneyDto.setReachTime(map.get("reachTime").toString());
            moneyDto.setRoomCatName(String.valueOf(map.get("roomCatName")));
            moneyDto.setRoomNumber(Integer.valueOf(map.get("roomNumber").toString()));
            moneyDto.setUserName(String.valueOf(map.get("userName")));
            moneyDto.setRoomId(Integer.valueOf(map.get("roomId").toString()));
            moneyDto.setBookId(Integer.valueOf(map.get("bookId").toString()));
            moneyList.add(moneyDto);
        }
        return moneyList;
    }

    /* (非 Javadoc)
     * Description:
     * @see com.hotel.dao.UserRoomDao#listAllRoom()
     */
    @Override
    public List<MoneyDto> listAllRoom() {
        String sql ="SELECT t.userName,rc.roomCatName, ic.cname,  rc.price, ic.price AS itemPrice, b.leaveTime,  b.reachTime,  b.roomNumber , r.id AS roomId FROM  t_user t LEFT JOIN t_user_room tr ON t.id = tr.user_id LEFT JOIN t_user_item ti ON t.id = ti.user_id LEFT JOIN t_room r ON r.id = tr.room_id LEFT JOIN t_room_cat rc ON rc.id = r.room_cat_id LEFT JOIN t_item i ON i.id = ti.item_id LEFT JOIN t_item_cat ic ON ic.cid = i.cid LEFT JOIN t_book b ON b.user_id = t.id WHERE  t.isDelete = 2 AND r.isPay=1 AND r.isLive=1	";
        Query qu = this.getSession().createSQLQuery(sql);
        qu.setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP);
                List<Map<String,Object>>  list = qu.list();
                List<MoneyDto> moneyList=new ArrayList<MoneyDto>();
                for(Map<String,Object> map : list){
                    MoneyDto moneyDto=new MoneyDto();
                    moneyDto.setCname(String.valueOf(map.get("cname")));
                    if(map.get("price")!=null){
                        moneyDto.setPrice(Double.valueOf(map.get("price").toString()));
                    }
                    if(map.get("itemPrice")!=null){
                        moneyDto.setItemPrice(Double.valueOf(map.get("itemPrice").toString()));
                    }
                    SimpleDateFormat format =  new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
                    String reachTime=map.get("reachTime").toString();
                    String leaveTime=map.get("leaveTime").toString();
                    Date rTime =new Date();
                    Date lTime =new Date();
					try {
						rTime = (format.parse(reachTime));
						lTime = (format.parse(leaveTime));
					} catch (ParseException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					//System.out.println((lTime.getTime()-rTime.getTime()));
					double a=lTime.getTime()-rTime.getTime();
					//计算天数
					double day=a/(1000 * 60 * 60 * 24);
					//System.out.println(day);
					//System.out.println(Math.ceil(day));
					moneyDto.setDay(Math.ceil(day));
                    moneyDto.setLeaveTime(map.get("leaveTime").toString());
                    moneyDto.setReachTime(map.get("reachTime").toString());
                    moneyDto.setRoomCatName(String.valueOf(map.get("roomCatName")));
                    moneyDto.setRoomNumber(Integer.valueOf(map.get("roomNumber").toString()));
                    moneyDto.setUserName(String.valueOf(map.get("userName")));
                    moneyDto.setRoomId(Integer.valueOf(map.get("roomId").toString()));
                    moneyList.add(moneyDto);
                }
                return moneyList;
    }

    /* (非 Javadoc)
     * Description:
     * @see com.hotel.dao.UserRoomDao#listByNameRoom(java.lang.String)
     */
    @Override
    public List<MoneyDto> listByNameRoom(String userName) {
        String sql ="SELECT t.userName,rc.roomCatName, ic.cname,  rc.price, ic.price AS itemPrice, b.leaveTime,  b.reachTime,  b.roomNumber, r.id AS roomId FROM  t_user t LEFT JOIN t_user_room tr ON t.id = tr.user_id LEFT JOIN t_user_item ti ON t.id = ti.user_id LEFT JOIN t_room r ON r.id = tr.room_id LEFT JOIN t_room_cat rc ON rc.id = r.room_cat_id LEFT JOIN t_item i ON i.id = ti.item_id LEFT JOIN t_item_cat ic ON ic.cid = i.cid LEFT JOIN t_book b ON b.user_id = t.id WHERE  t.isDelete = 2 AND r.isPay =1 AND r.isLive=1 AND t.userName LIKE :name";
        Query qu = this.getSession().createSQLQuery(sql);
      qu.setParameter("name", userName);
      qu.setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP);
      List<Map<String,Object>>  list = qu.list();
      List<MoneyDto> moneyList=new ArrayList<MoneyDto>();
      for(Map<String,Object> map : list){
          MoneyDto moneyDto=new MoneyDto();
          moneyDto.setCname(String.valueOf(map.get("cname")));
          if(map.get("price")!=null){
              moneyDto.setPrice(Double.valueOf(map.get("price").toString()));
          }
          if(map.get("itemPrice")!=null){
              moneyDto.setItemPrice(Double.valueOf(map.get("itemPrice").toString()));
          }
          SimpleDateFormat format =  new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
          String reachTime=map.get("reachTime").toString();
          String leaveTime=map.get("leaveTime").toString();
          Date rTime =new Date();
          Date lTime =new Date();
			try {
				rTime = (format.parse(reachTime));
				lTime = (format.parse(leaveTime));
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			//System.out.println((lTime.getTime()-rTime.getTime()));
			double a=lTime.getTime()-rTime.getTime();
			//计算天数
			double day=a/(1000 * 60 * 60 * 24);
			//System.out.println(day);
			//System.out.println(Math.ceil(day));
		  moneyDto.setDay(Math.ceil(day));
          moneyDto.setLeaveTime(map.get("leaveTime").toString());
          moneyDto.setReachTime(map.get("reachTime").toString());
          moneyDto.setRoomCatName(String.valueOf(map.get("roomCatName")));
          moneyDto.setRoomNumber(Integer.valueOf(map.get("roomNumber").toString()));
          moneyDto.setUserName(String.valueOf(map.get("userName")));
          moneyDto.setRoomId(Integer.valueOf(map.get("roomId").toString()));
          moneyList.add(moneyDto);
      }
      return moneyList;
    }

    
}
