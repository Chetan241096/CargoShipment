package com.Vo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.GenerationType;;
@Entity
@Table(name="complaintable")
public class ComplainVo {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int complainId;
	
	@Column(name="complainTitle")
	private String complainTitle; 
	
	@Column(name="complainDescription")
	private String complainDescription;
	
	@Column(name="complainReplyDescription")
	private String complainReplyDescription;
	
	@Column(name="complainStatus")
	private String complainStatus;
	
	@Column(name="complainDate")
	private String complainDate;
	
	@Column(name="complainTime")
	private String complainTime;

	public int getComplainId() {
		return complainId;
	}

	public void setComplainId(int complainId) {
		this.complainId = complainId;
	}

	public String getComplainTitle() {
		return complainTitle;
	}

	public void setComplainTitle(String complainTitle) {
		this.complainTitle = complainTitle;
	}

	public String getComplainDescription() {
		return complainDescription;
	}

	public void setComplainDescription(String complainDescription) {
		this.complainDescription = complainDescription;
	}

	public String getComplainReplyDescription() {
		return complainReplyDescription;
	}

	public void setComplainReplyDescription(String complainReplyDescription) {
		this.complainReplyDescription = complainReplyDescription;
	}

	public String getComplainStatus() {
		return complainStatus;
	}

	public void setComplainStatus(String complainStatus) {
		this.complainStatus = complainStatus;
	}

	public String getComplainDate() {
		return complainDate;
	}

	public void setComplainDate(String complainDate) {
		this.complainDate = complainDate;
	}

	public String getComplainTime() {
		return complainTime;
	}

	public void setComplainTime(String complainTime) {
		this.complainTime = complainTime;
	}



		
	
}
