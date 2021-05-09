package com.hotel.action;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.hotel.model.Need;
import com.hotel.service.LogService;
import com.hotel.service.NeedService;
import com.hotel.utils.Pager;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;



@Controller("needAction")
@Scope("prototype")
public class NeedAction extends ActionSupport implements ModelDriven<Need>{

   private Need need;
   private int needId;

	public int getNeedId() {
	return needId;
}


public void setNeedId(int needId) {
	this.needId = needId;
}


	@Override
	public Need getModel() {
		if(need==null) need = new Need();
		return need;
	}
	
	@Autowired
	private NeedService needService;
	
	
	@Autowired
	private LogService logService;
	
	 /**
     * 获取需求列表
     * @return
     */
    public String needList(){
      Pager<Need> pagers = needService.listAll();
    ActionContext.getContext().put("pagers", pagers);
    return SUCCESS;
    }
    
    
    /**
     * 异常需求页面
     * @Description (TODO这里用一句话描述这个方法的作用)
     * @return
     */
    public String addNeed() {
        return "success";
    }
    
    
    /**
     * 新增需求
     * @Description (TODO这里用一句话描述这个方法的作用)
     * @return
     */
    public String needAdd(){
    	needService.add(need);
        String content="新增需求";
        HttpSession session =ServletActionContext.getRequest().getSession();
        int userId = Integer.parseInt( session.getAttribute("userId").toString());
        //插入日志
        logService.addLog(content,userId);
        ActionContext.getContext().put("url", "/need_needList.do");
        return "redirect";
    }
    
    /**
     * 删除需求
     * @return
     */
    public String delNeed(){
    	needService.delNeed(needId);
        String content="删除需求";
        HttpSession session =ServletActionContext.getRequest().getSession();
        int userId = Integer.parseInt( session.getAttribute("userId").toString());
        //插入日志
        logService.addLog(content,userId);
        ActionContext.getContext().put("url", "/need_needList.do");
        return "redirect";
    }
    
    
    /**
     * 初始化修改页面
     * @Description (TODO这里用一句话描述这个方法的作用)
     * @return
     */
    public String updateNeed(){
        Need need =needService.load(needId);
        ActionContext.getContext().put("need", need);
         return "success";
     }
    
    /**
     * 修改需求
     * @Description (TODO这里用一句话描述这个方法的作用)
     * @return
     */
    public String needUpdate(){
    	needService.update(need);
        String content="修改需求";
        HttpSession session =ServletActionContext.getRequest().getSession();
        int userId = Integer.parseInt( session.getAttribute("userId").toString());
        //插入日志
        logService.addLog(content,userId);
        ActionContext.getContext().put("url", "/need_needList.do");
        return "redirect";
     }
	
}
