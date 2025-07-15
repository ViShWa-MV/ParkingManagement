package com.ParkingManagement.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ParkingManagement.Repository.CustomerRepository;
import com.ParkingManagement.Repository.LoginRepository;
import com.ParkingManagement.entity.Customer;

@Controller
@RequestMapping("/si")
public class CustomerControler {
	@Autowired
	  private CustomerRepository customerrepo;
	@GetMapping("/signup")
	public String display()
	{
		return "signup";
	}
	@PostMapping("/login")
	public String login1( @RequestParam("name") String name,
            @RequestParam("email") String email,
            @RequestParam("password") String password,@RequestParam("vehicle") String vehicle,
            @RequestParam("address") String address)
	{
		Customer c=new Customer(name,email,password,address,vehicle);
		customerrepo.save(c);
		return "login";
	}
	

}
