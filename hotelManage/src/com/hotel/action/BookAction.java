package com.hotel.action;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.hotel.dto.MoneyDto;
import com.hotel.model.Book;
import com.hotel.model.Room;
import com.hotel.model.Room_cat;
import com.hotel.model.UserRoom;
import com.hotel.service.BookService;
import com.hotel.service.LogService;
import com.hotel.service.RoomCatService;
import com.hotel.service.RoomService;
import com.hotel.service.UserItemService;
import com.hotel.service.UserRoomService;
import com.hotel.utils.Pager;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@Controller("bookAction")
@Scope("prototype")
public class BookAction extends ActionSupport implements ModelDriven<Book>{
   private Book book;
   private int userId;
   private int bookId;
   
   private String userName;
   private int floor;
   private int roomId;
   private String roomCatName;
   
   
    
public int getRoomId() {
    return roomId;
}



public void setRoomId(int roomId) {
    this.roomId = roomId;
}


    public String getUserName() {
        return userName;
    }
    
    
    public void setUserName(String userName) {
        this.userName = userName;
    }

    
    
    
    public int getFloor() {
        return floor;
    }


    
    public void setFloor(int floor) {
        this.floor = floor;
    }


    
    public String getRoomCatName() {
        return roomCatName;
    }



    
    public void setRoomCatName(String roomCatName) {
        this.roomCatName = roomCatName;
    }



    public int getUserId() {
        return userId;
    }
    
    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getBookId() {
        return bookId;
    }

    
    public void setBookId(int bookId) {
        this.bookId = bookId;
    }

    @Override
    public Book getModel() {
        if(book==null) book = new Book();
        return book;
    }
    @Autowired
    private LogService  logService;
    
    @Autowired
    private RoomService roomService;
    
    @Autowired
    private RoomCatService  roomCatService;
    
    @Autowired
    private BookService bookService;
    
    @Autowired
    private UserRoomService UserRoomService;
    
    @Autowired
    private UserItemService  userItemService;
    
    /**
     * 获取用户预订房间信息列表
     * @return
     */
    public String bookList(){
      Pager<Book> pagers = bookService.listAll();
    ActionContext.getContext().put("pagers", pagers);
    return SUCCESS;
    }
    
    
    /**
     * 获取取消预定信息详情
     * @Description (TODO这里用一句话描述这个方法的作用)
     * @return
     */
    public String updateBook(){
        Book book =bookService.bookDetail(bookId);
        ActionContext.getContext().put("book", book);
         return "success";
     }
    
    
    /**
     * 后台管理员取消预定
     * @Description (TODO这里用一句话描述这个方法的作用)
     * @return
     */
    public String cancelBook(){
        Book book =bookService.bookDetail(bookId);
        //删除订单表
        bookService.delBook(bookId);
        //修改房间状态
        Room room=roomService.roomDetail(book.getRoom().getId());
        room.setIsLive(1);
        roomService.update(room);
        //修改房间类别数量
       Room_cat room_cat=roomCatService.load(room.getRoom_cat().getId());
       room_cat.setNum(room_cat.getNum()+1);
       roomCatService.update(room_cat);
        String content="取消预定";
        HttpSession session =ServletActionContext.getRequest().getSession();
        int userId = Integer.parseInt( session.getAttribute("userId").toString());
        //插入日志
        logService.addLog(content,userId);
        ActionContext.getContext().put("url", "/book_bookList.do");
        return "redirect";
        }
    
    /**
     * 获取用户已入住信息列表
     * @return
     */
    public String liveList(){
        Pager<Book> pagers = bookService.listAll();
        ActionContext.getContext().put("pagers", pagers);
      return SUCCESS;
      }
  
    
    /**
     * 获取入住详情信息列表
     * @Description (TODO这里用一句话描述这个方法的作用)
     * @return
     */
    public String liveRoom(){
        Book book =bookService.bookDetail(bookId);
        
        
        ActionContext.getContext().put("book", book);
         return "success";
     }
    
    /**
     * 后台管理员立即入住
     * @Description (TODO这里用一句话描述这个方法的作用)
     * @return
     */
    public String live(){
        Book book =bookService.bookDetail(bookId);
        book.setStatus(2);
        //更新预定表
        bookService.updateBook(book);
        //修改房间状态
        Room room=roomService.roomDetail(book.getRoom().getId());
        room.setIsLive(3);
        roomService.update(room);
        
        String content="办理入住";
        HttpSession session =ServletActionContext.getRequest().getSession();
        int userId = Integer.parseInt( session.getAttribute("userId").toString());
        //插入日志
        logService.addLog(content,userId);
        ActionContext.getContext().put("url", "/book_bookList.do");
        return "redirect";
        }
    
    /**
     * 获取更换房间信息列表
     * @return
     */
    public String changeRoomList(){
        Pager<Book> pagers = bookService.listAllLive();
      ActionContext.getContext().put("pagers", pagers);
      return SUCCESS;
      }
    
    /**
     * 获取更换房间信息详情
     * @return
     */
    public String changeRoom(){
      Book book =bookService.bookDetail(bookId);
      ActionContext.getContext().put("book", book);
      return SUCCESS;
      }
    
    
    /**
     * 获取更换房间信息修改页面
     * @return
     */
    public String roomChange(){
      Book book =bookService.bookDetail(bookId);
      List<Room> roomList=roomService.roomInfo(book.getRoom().getRoom_cat().getRoomCatName());
    //  List<Room> roomList=roomService.roomInfo(book.getRoom().getRoom_cat().getId());
     // List<Book>  bookList=bookService.roomInfo(book.getRoom().getRoom_cat().getRoomCatName());
      List<Room_cat> roomCatList=roomCatService.list();
      ActionContext.getContext().put("roomList", roomList);
      ActionContext.getContext().put("roomCatList", roomCatList);
      ActionContext.getContext().put("book", book);
      return SUCCESS;
    }
    /**
     * 后台管理员更换房间
     * @Description (TODO这里用一句话描述这个方法的作用)
     * @return
     */
    public String change(){
        //查出更换之前的房间修改状态
        Book book1 =bookService.bookDetail(book.getId());
        Room room=roomService.roomDetail(book1.getRoom().getId());
        room.setIsLive(1);
        roomService.update(room);
        //删除房间和客户关联的表
        UserRoomService.delUserRoom(book1.getRoom().getId());
        //修改更换后的book表和房间状态
        Book book2=bookService.bookDetail(book.getId());
        Room room1=new Room();
        room1.setId(roomId);
        book2.setRoom(room1);
        bookService.updateBook(book2);
        Room room2=roomService.roomDetail(roomId);
        room2.setIsLive(3);
        roomService.update(room2);
        //重新向房间和客户关联的表插入数据
        UserRoom userRoom =new UserRoom();
        userRoom.setRoom(room1);
        userRoom.setUser(book2.getBookUser());
        UserRoomService.addUserRoom(userRoom);
        
        String content="更换房间";
        HttpSession session =ServletActionContext.getRequest().getSession();
        int userId = Integer.parseInt( session.getAttribute("userId").toString());
        //插入日志
        logService.addLog(content,userId);
        ActionContext.getContext().put("url", "/book_changeRoomList.do");
        return "redirect";
        }
    
    
    
    /**
     * 结账管理
     * @Description (TODO这里用一句话描述这个方法的作用)
     * @return
     */
    public String tuifangList(){
        List<MoneyDto> userRoomList =UserRoomService.listAll(userName);
        ActionContext.getContext().put("userRoomList", userRoomList);
        return SUCCESS;
    }
    
    /**
     * 立刻结账
     * @Description (TODO这里用一句话描述这个方法的作用)
     * @return
     */
    public String payList(){
        Room r =roomService.load(roomId);
        //修改房间状态
        r.setIsLive(1);//房间变为空
        r.setIsPay(1);//变为已经结账
        roomService.update(r);
        //修改房间类别数量
        Room_cat room_cat=roomCatService.load(r.getRoom_cat().getId());
        room_cat.setNum(room_cat.getNum()+1);
        roomCatService.update(room_cat);
        //更新预定表状态
        Book b = bookService.load(bookId);
        b.setStatus(0);
        bookService.updateBook(b);
        ActionContext.getContext().put("url", "/book_tuifangList.do");
        return "redirect";
    }
    
     
    
    /**
     * 财务查询
     * @Description (TODO这里用一句话描述这个方法的作用)
     * @return
     */
    public String moneyList(){
        List<MoneyDto> userRoomList =UserRoomService.listAllRoom(userName);
        ActionContext.getContext().put("userRoomList", userRoomList);
        return SUCCESS;
    }
}
