package com.sims_models;

public class Admin {
	private int aid;
	private String name;
	private int age;
	private String address;
	private String contact;
	private String profilePic;
	
	public Admin(int aid, String name, int age, String address, String contact, String profilePic) {
		this.aid = aid;
		this.name = name;
		this.age = age;
		this.address = address;
		this.contact = contact;
		this.profilePic = profilePic;
	}

	public int getAid() {
		return aid;
	}

	public String getName() {
		return name;
	}

	public int getAge() {
		return age;
	}

	public String getAddress() {
		return address;
	}


	public String getContact() {
		return contact;
	}

	public String getProfilePic() {
		return profilePic;
	}

	
	
}