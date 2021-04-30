package com.sims_models;

public class Marks {
	private int sid, sbid, grade;
	private String exam;
	private double result;
	
	public Marks(int sid, int sbid, int grade, String exam, double result) {
		this.sid = sid;
		this.sbid = sbid;
		this.grade = grade;
		this.exam = exam;
		this.result = result;
	}

	public int getSid() {
		return sid;
	}

	public int getSbid() {
		return sbid;
	}

	public int getGrade() {
		return grade;
	}

	public String getExam() {
		return exam;
	}

	public double getResult() {
		return result;
	}
	
	
	
	
}
