package com.internousdev.template.dao;

import com.internousdev.template.dto.LoginDTO;
import com.internousdev.template.util.DBConnector;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

public class LoginDAO {
	private DBConnector db= new DBConnector();
	private Connection con= db.getConnection();
	private LoginDTO dto= new LoginDTO();

	public LoginDTO select (String loginUserId, String loginPassword) {
		String sql= "SELECT * FROM login_user_transaction where login_id= ? AND login_pass= ?";

		try {
			PreparedStatement ps= con.prepareStatement(sql);
			ps.setString (1, loginUserId);
			pst.setString (2, loginPassword);

			ResultSet rs= ps.executeQuery();

			if (rs.next()) {
				dto.setLoginId( rs.getString ("login_id"));
				dto.setLoginPassword (rs.getString ("login_pass"));
				dto.setUserName (rs.getString ("user_name"));

				if (!(rs.getString ("login_id").equals (null))) {
					dto.setLoginFlg(true);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return dto;
	}

	public LoginDTO getLoginDTO() {
		return loginDTO;
	}
}