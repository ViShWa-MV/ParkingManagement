package com.ParkingManagement.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ParkingManagement.entity.Customer;

public interface CustomerRepository extends JpaRepository<Customer,Integer> {
	
	Customer findByEmailid(String emailid);
}
