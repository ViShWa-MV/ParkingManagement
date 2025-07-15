package com.ParkingManagement.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ParkingManagement.entity.Customer;
import com.ParkingManagement.entity.Login;


public interface LoginRepository extends JpaRepository<Login,Integer>{

	
}
