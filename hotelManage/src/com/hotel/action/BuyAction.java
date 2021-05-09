package com.hotel.action;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.hotel.model.Buy;
import com.hotel.service.BuyService;
import com.hotel.service.LogService;
import com.hotel.utils.Pager;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;



@Controller("buyAction")
@Scope("prototype")
public class BuyAction extends ActionSupport implements ModelDriven<Buy>{

   private Buy buy;
   private int buyId;

	public int getBuyId() {
	return buyId;
}


public void setBuyId(int buyId) {
	this.buyId = buyId;
}


	@Override
	public Buy getModel() {
		if(buy==null) buy = new Buy();
		return buy;
	}
	
	@Autowired
	private BuyService buyService;
	
	
	@Autowired
	private LogService logService;
	
	 /**
     * 获取物品采购列表
     * @return
     */
    public String buyList(){
      Pager<Buy> pagers = buyService.listAll();
    ActionContext.getContext().put("pagers", pagers);
    return SUCCESS;
    }
    
    
    /**
     * 初始化新增物品采购页面
     * @Description (TODO这里用一句话描述这个方法的作用)
     * @return
     */
    public String addBuy() {
        return "success";
    }
    
    
    /**
     * 新增物品采购
     * @Description (TODO这里用一句话描述这个方法的作用)
     * @return
     */
    public String buyAdd(){
    	buyService.add(buy);
        String content="新增物品采购";
        HttpSession session =ServletActionContext.getRequest().getSession();
        int userId = Integer.parseInt( session.getAttribute("userId").toString());
        //插入日志
        logService.addLog(content,userId);
        ActionContext.getContext().put("url", "/buy_buyList.do");
        return "redirect";
    }
    
    /**
     * 删除物品采购
     * @return
     */
    public String delBuy(){
    	buyService.delBuy(buyId);
        String content="删除物品采购";
        HttpSession session =ServletActionContext.getRequest().getSession();
        int userId = Integer.parseInt( session.getAttribute("userId").toString());
        //插入日志
        logService.addLog(content,userId);
        ActionContext.getContext().put("url", "/buy_buyList.do");
        return "redirect";
    }
    
    
    /**
     * 初始化修改页面
     * @Description (TODO这里用一句话描述这个方法的作用)
     * @return
     */
    public String updateBuy(){
        Buy buy =buyService.load(buyId);
        ActionContext.getContext().put("buy", buy);
         return "success";
     }
    
    /**
     * 修改物品采购
     * @Description (TODO这里用一句话描述这个方法的作用)
     * @return
     */
    public String buyUpdate(){
    	buyService.update(buy);
        String content="修改物品采购";
        HttpSession session =ServletActionContext.getRequest().getSession();
        int userId = Integer.parseInt( session.getAttribute("userId").toString());
        //插入日志
        logService.addLog(content,userId);
        ActionContext.getContext().put("url", "/buy_buyList.do");
        return "redirect";
     }
	
}
