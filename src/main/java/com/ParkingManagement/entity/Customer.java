package com.ParkingManagement.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="customer")
public class Customer {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	int customerid;
	public Customer(String name, String emailid, String password, String address, String vehicle, String regno,
			String phonenumber) {
		super();
		this.name = name;
		this.emailid = emailid;
		this.password = password;
		this.address = address;
		this.vehicle = vehicle;
		this.regno = regno;
		this.phonenumber = phonenumber;
	}
	public Customer() {
		super();
	}
	public Customer(String name, String emailid, String password, String address, String vehicle) {
		super();
		this.name = name;
		this.emailid = emailid;
		this.password = password;
		this.address = address;
		this.vehicle = vehicle;
	}
	
	
	String name;
	public int getCustomerid() {
		return customerid;
	}
	public void setCustomerid(int customerid) {
		this.customerid = customerid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getVehicle() {
		return vehicle;
	}
	public void setVehicle(String vehicle) {
		this.vehicle = vehicle;
	}
	public String getRegno() {
		return regno;
	}
	public void setRegno(String regno) {
		this.regno = regno;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	String emailid;
	String password;
	String address;
	String vehicle;
	String regno;
	String phonenumber;
	
	

}
