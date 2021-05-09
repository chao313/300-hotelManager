package com.hotel.action;


import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.hotel.model.Mistake;
import com.hotel.service.LogService;
import com.hotel.service.MistakeService;
import com.hotel.utils.Pager;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;



@Controller("mistakeAction")
@Scope("prototype")
public class MistakeAction extends ActionSupport implements ModelDriven<Mistake>{

   private Mistake mistake;
   private int mistakeId;


	public int getMistakeId() {
	return mistakeId;
}


public void setMistakeId(int mistakeId) {
	this.mistakeId = mistakeId;
}


	@Override
	public Mistake getModel() {
		if(mistake==null) mistake = new Mistake();
		return mistake;
	}
	
	@Autowired
	private MistakeService mistakeService;
	
	
	@Autowired
	private LogService logService;
	
	
	 /**
     * 获取异常列表
     * @return
     */
    public String mistakeList(){
      Pager<Mistake> pagers = mistakeService.listAll();
    ActionContext.getContext().put("pagers", pagers);
    return SUCCESS;
    }
    
    
    /**
     * 初始化异常新增页面
     * @Description (TODO这里用一句话描述这个方法的作用)
     * @return
     */
    public String addMistake() {
        return "success";
    }
    
    
    /**
     * 新增异常
     * @Description (TODO这里用一句话描述这个方法的作用)
     * @return
     */
    public String mistakeAdd(){
    	mistakeService.add(mistake);
        String content="新增异常";
        HttpSession session =ServletActionContext.getRequest().getSession();
        int userId = Integer.parseInt( session.getAttribute("userId").toString());
        //插入日志
        logService.addLog(content,userId);
        ActionContext.getContext().put("url", "/mistake_mistakeList.do");
        return "redirect";
    }
    
    /**
     * 删除异常
     * @return
     */
    public String delMistake(){
    	mistakeService.delMistake(mistakeId);
        String content="删除异常";
        HttpSession session =ServletActionContext.getRequest().getSession();
        int userId = Integer.parseInt( session.getAttribute("userId").toString());
        //插入日志
        logService.addLog(content,userId);
        ActionContext.getContext().put("url", "/mistake_mistakeList.do");
        return "redirect";
    }
    
    
    /**
     * 初始化修改页面
     * @Description (TODO这里用一句话描述这个方法的作用)
     * @return
     */
    public String updateMistake(){
    	Mistake mistake =mistakeService.load(mistakeId);
        ActionContext.getContext().put("mistake", mistake);
         return "success";
     }
    
    /**
     * 修改异常
     * @Description (TODO这里用一句话描述这个方法的作用)
     * @return
     */
    public String mistakeUpdate(){
    	mistakeService.update(mistake);
        String content="修改异常";
        HttpSession session =ServletActionContext.getRequest().getSession();
        int userId = Integer.parseInt( session.getAttribute("userId").toString());
        //插入日志
        logService.addLog(content,userId);
        ActionContext.getContext().put("url", "/mistake_mistakeList.do");
        return "redirect";
     }
    
	 /**
     * 获取维修列表
     * @return
     */
    public String repairList(){
      Pager<Mistake> pagers = mistakeService.listAll();
    ActionContext.getContext().put("pagers", pagers);
    return SUCCESS;
    }
	
    /**
     * 进行维修（删除异常）
     * @return
     */
    public String repairMistake(){
    	mistakeService.delMistake(mistakeId);
        String content="异常维修";
        HttpSession session =ServletActionContext.getRequest().getSession();
        int userId = Integer.parseInt( session.getAttribute("userId").toString());
        //插入日志
        logService.addLog(content,userId);
        ActionContext.getContext().put("url", "/mistake_repairList.do");
        return "redirect";
    }
}
