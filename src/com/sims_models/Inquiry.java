package com.sims_models;

public class Inquiry {
	private String iid;
	private int sid;
	private String email;
	private String inquiry;
	private int responded;

	public Inquiry(String iid, int sid, String email, String inquiry, int responded) {
		this.iid = iid;
		this.sid = sid;
		this.email = email;
		this.inquiry = inquiry;
		this.responded = responded;
	}
	
	public String getIid() {
		return iid;
	}

	public int getSid() {
		return sid;
	}

	public String getEmail() {
		return email;
	}

	public String getInquiry() {
		return inquiry;
	}

	public int getResponded() {
		return responded;
	}
}