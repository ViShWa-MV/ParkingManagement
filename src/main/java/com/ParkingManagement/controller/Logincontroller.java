package com.ParkingManagement.controller;

import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ParkingManagement.Repository.CustomerRepository;
import com.ParkingManagement.Repository.LoginRepository ;
import com.ParkingManagement.entity.Availability;
import com.ParkingManagement.entity.Customer;
import com.ParkingManagement.entity.Login;
@Controller

	public class Logincontroller {
		
		  @Autowired
		  private CustomerRepository customerrepo;
		  @GetMapping("/login")
		  public String display() {
			  return "login";
		  }
		  @GetMapping("/signup")
		  public String signup()
		  {
			  return "signup";
		  }
		  @PostMapping("/next")
		  public String login(@RequestParam("emailid") String emailid,
		                      @RequestParam("password") String password) {

		      String errorMessage = null;

		      try {
		          Customer user = customerrepo.findByEmailid(emailid);

		          if (user != null && user.getPassword().equals(password)) {
		              // Credentials are correct
		              return "home";
		          } else {
		              errorMessage = "Invalid email or password";
		          }

		      } catch (DataIntegrityViolationException e) {
		          errorMessage = "Invalid user data";
		      }

		      String encodedError = URLEncoder.encode(errorMessage, StandardCharsets.UTF_8);
		      return "redirect:/login?error=" + encodedError;
		  }

	    	
		  }
		  

