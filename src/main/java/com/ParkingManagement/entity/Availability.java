package com.ParkingManagement.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="vehicledetails")
public class Availability {
	
	public Availability() {
		super();
	}
	public Availability(String regno, String vehicle, String customername, String phonenumber, String color,
			String model, String address, String entrydate,String slotno) {
	
		this.regno = regno;
		this.vehicle = vehicle;
		this.customername = customername;
		this.phonenumber = phonenumber;
		this.color = color;
		this.model = model;
		this.address = address;
		this.entrydate = entrydate;
		this.slotno=slotno;
	}
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	int customerid;
	
	public int getCustomerid() {
		return customerid;
	}
	public void setCustomerid(int customerid) {
		this.customerid = customerid;
	}
	public String getRegno() {
		return regno;
	}
	public void setRegno(String regno) {
		this.regno = regno;
	}
	public String getVehicle() {
		return vehicle;
	}
	public void setVehicle(String vehicle) {
		this.vehicle = vehicle;
	}
	public String getCustomername() {
		return customername;
	}
	public void setCustomername(String customername) {
		this.customername = customername;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEntrydate() {
		return entrydate;
	}
	public void setEntrydate(String entrydate) {
		this.entrydate = entrydate;
	}
	String regno;
	String vehicle;
	String customername;
	String phonenumber;
	String color;
	String model;
	String address;
	String entrydate;
	
	@Column(unique = true)
    String slotno;


	public String getSlotno() {
		return slotno;
	}
	public void setSlotno(String slotno) {
		this.slotno = slotno;
	}
	
	

	
	
	
	
	

}
