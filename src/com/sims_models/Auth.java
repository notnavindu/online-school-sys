package com.sims_models;

public class Auth {
	private int auid;
	private String userName;
	private String password;
	private String userState;

public Auth(int auid, String userName, String password, String userState) {
		
		this.auid = auid;
		this.userName = userName;
		this.password = password;
		this.userState = userState;
	}

	public int getAuid() {
	return auid;
}

	public String getUserName() {
		return userName;
	}

	public String getPassword() {
		return password;
	}

	public String getUserState() {
		return userState;
	}

}