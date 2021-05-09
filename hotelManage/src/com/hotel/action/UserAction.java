package com.hotel.action;

import java.lang.reflect.InvocationTargetException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.hotel.model.Item;
import com.hotel.model.Suggest;
import com.hotel.model.User;
import com.hotel.service.SuggestService;
import com.hotel.utils.Pager;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;


@Controller("userAction")
@Scope("prototype")
public class UserAction extends ActionSupport implements ModelDriven<User>{
	private  User user;
	
	@Override
	public User getModel() {
		if(user==null) user = new User();
		return user;
	}
	
}  
