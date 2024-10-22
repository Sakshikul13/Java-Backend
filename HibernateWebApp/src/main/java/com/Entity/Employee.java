package com.Entity;

import javax.persistence.Id;
import javax.persistence.Entity;

@Entity
public class Employee {
	@Id
	private int eid;
	private String name;
	private String gender;
	private String address;
	private String mobile;
	private String email;
	public int getEid() {
		return eid;
	}
	public void setEid(int eid) {
		this.eid = eid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Employee(int eid, String name, String gender, String address, String mobile, String email) {
		super();
		this.eid = eid;
		this.name = name;
		this.gender = gender;
		this.address = address;
		this.mobile = mobile;
		this.email = email;
	}
	public Employee() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Employee [eid=" + eid + ", name=" + name + ", gender=" + gender + ", address=" + address + ", mobile="
				+ mobile + ", email=" + email + "]";
	}
}
