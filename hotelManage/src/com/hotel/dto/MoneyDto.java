package com.hotel.dto;

import java.util.Date;

public class MoneyDto {

    private String userName;
    private String roomCatName;
    private String cname;
    private double price;
    private double itemPrice;
    private String leaveTime;
    private String reachTime;
    private Integer roomNumber;
    private Integer roomId;
    private Integer bookId;
    private double day;
    
    public String getUserName() {
        return userName;
    }
    
    public void setUserName(String userName) {
        this.userName = userName;
    }
    
    public String getRoomCatName() {
        return roomCatName;
    }
    
    public void setRoomCatName(String roomCatName) {
        this.roomCatName = roomCatName;
    }
    
    public String getCname() {
        return cname;
    }
    
    public void setCname(String cname) {
        this.cname = cname;
    }
    
    public double getPrice() {
        return price;
    }
    
    public void setPrice(double price) {
        this.price = price;
    }
    
    public double getItemPrice() {
        return itemPrice;
    }
    
    public void setItemPrice(double itemPrice) {
        this.itemPrice = itemPrice;
    }
    
    
    public String getLeaveTime() {
        return leaveTime;
    }

    
    public void setLeaveTime(String leaveTime) {
        this.leaveTime = leaveTime;
    }

    
    public String getReachTime() {
        return reachTime;
    }

    
    public void setReachTime(String reachTime) {
        this.reachTime = reachTime;
    }

    public Integer getRoomNumber() {
        return roomNumber;
    }
    
    public void setRoomNumber(Integer roomNumber) {
        this.roomNumber = roomNumber;
    }

    
    public Integer getRoomId() {
        return roomId;
    }

    
    public void setRoomId(Integer roomId) {
        this.roomId = roomId;
    }

    
    public Integer getBookId() {
        return bookId;
    }

    
    public void setBookId(Integer bookId) {
        this.bookId = bookId;
    }

	public double getDay() {
		return day;
	}

	public void setDay(double day) {
		this.day = day;
	}



	
    
    
}
