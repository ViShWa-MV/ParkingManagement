package com.ParkingManagement.Repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ParkingManagement.entity.Availability;

public interface AvailabilityRepository extends JpaRepository<Availability,Integer> {

	Optional<Availability> findByCustomerid(int customerid);


	//void deleteByCustomerid(int customerid);
	

}