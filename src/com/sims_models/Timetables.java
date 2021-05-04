package com.sims_models;

public class Timetables {
	private int ttid;
	private int year;
	private int grade;
	private String className;
	private String image;
	
	public Timetables(int year, int grade, String className, String image) {
		super();
		this.year = year;
		this.grade = grade;
		this.className = className;
		this.image = image;
	}


	public Timetables(int ttid, int year, int grade, String className, String image) {
		this.ttid = ttid;
		this.year = year;
		this.grade = grade;
		this.className = className;
		this.image = image;
	}

	
	public int getTtid() {
		return ttid;
	}

	public int getYear() {
		return year;
	}

	public int getGrade() {
		return grade;
	}

	public String getClassName() {
		return className;
	}

	public String getImage() {
		return image;
	}
}