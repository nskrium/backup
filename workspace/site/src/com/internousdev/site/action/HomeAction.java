package com.internousdev.site.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.site.dao.BuyItemDAO;
import com.internousdev.site.dto.BuyItemDTO;
import com.opensymphony.xwork2.ActionSupport;

public class HomeAction extends ActionSupport implements SessionAware {
	public Map<String, Object> session;

	public String execute() {
		String result= "login";
		if (session.containsKey("id")) {
			BuyItemDAO buyItemDAO= new BuyItemDAO();
			BuyItemDTO buyItemDTO= buyItemDAO.getBuyItemInfo();

			session.put("id", buyItemDTO.getId());
			session.put("buyItem_name", buyItemDTO.getItemName());
			session.put("buyItem_price", buyItemDTO.getItemPrice());

			result= SUCCESS;
		}

		return result;
	}

	public void setSession(Map<String, Object> session) {
		this.session= session;
	}


	public Map<String, Object> getsession() {
		return this.session;
	}

}
