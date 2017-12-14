package com.internousdev.webproj4.action;

import java.util.ArrayList;
import java.util.List;

import com.internousdev.webproj4.dao.LoginDAO;
import com.internousdev.webproj4.dto.LoginDTO;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {
	private String username;
	private String password;
	private List<LoginDTO> LoginDTOList= new ArrayList<LoginDTO>();

	public String execute() {
		String ret= ERROR;

		LoginDAO dao= new LoginDAO();
		System.out.println(username);
		System.out.println(password);
		LoginDTOList= dao.select(username, password);

		if (this.username.equals(LoginDTOList.get(0).getUsername())
				&& this.password.equals(LoginDTOList.get(0).getPassword())) {
			ret= SUCCESS;

		} else {
			ret= ERROR;
		}

		return ret;
	}



}
