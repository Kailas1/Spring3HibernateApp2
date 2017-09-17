package com.dineshonjava.bean;

import java.io.File;

import com.mysql.jdbc.Blob;

/**
 * @author Dinesh Rajput
 *
 */
public class EmployeeBean {
	private Integer id;
	private String title;
	private String details;
	private String link1;
	private String link2;
	

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDetails() {
		return details;
	}

	public void setDetails(String details) {
		this.details = details;
	}

	public String getLink1() {
		return link1;
	}

	public void setLink1(String link1) {
		this.link1 = link1;
	}

	public String getLink2() {
		return link2;
	}

	public void setLink2(String link2) {
		this.link2 = link2;
	}

	
	

}