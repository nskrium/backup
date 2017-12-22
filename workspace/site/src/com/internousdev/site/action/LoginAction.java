package com.internousdev.site.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.site.dao.BuyItemDAO;
import com.internousdev.site.dao.LoginDAO;
import com.internousdev.site.dto.BuyItemDTO;
import com.internousdev.site.dto.LoginDTO;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport implements SessionAware {
	private String loginUserId;
	private String loginPassword;
	public Map<String, Object> session;

	private LoginDAO loginDAO= new LoginDAO();
	private LoginDTO loginDTO= new LoginDTO();
	private BuyItemDAO buyItemDAO= new BuyItemDAO();

	public String execute() {
		String ret= ERROR;

		loginDTO= loginDAO.getLoginUserInfo(loginUserId, loginPassword);
		session.put("loginUser", loginDTO);

		if (((LoginDTO) session.get("loginUser")).getLoginFlg()) {
			ret= SUCCESS;

			BuyItemDTO buyItemDTO= buyItemDAO.getBuyItemInfo();
			session.put("login_user_id", loginDTO.getLoginId());
			session.put("id", buyItemDTO.getId());
			session.put("buyItem_name", buyItemDTO.getItemName());
			session.put("buyItem_price", buyItemDTO.getItemPrice());

			return ret;
		}

		return ret;
	}

	public String getLoginUserId() {
		return loginUserId;
	}
	public void setLoginUserId (String loginUserId) {
		this.loginUserId= loginUserId;
	}

	public String getLoginPassword() {
		return loginPassword;
	}
	public void setLoginPassword (String loginPassword) {
		this.loginPassword= loginPassword;
	}

	public void setSession (Map<String, Object> session) {
		this.session= session;
	}

}
