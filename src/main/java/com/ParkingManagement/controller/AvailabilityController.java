	package com.ParkingManagement.controller;
	
	import java.net.URLEncoder;
	import java.nio.charset.StandardCharsets;
	import java.util.List;
	import java.util.Optional;
	
	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.dao.DataIntegrityViolationException;
	import org.springframework.stereotype.Controller;
	import org.springframework.ui.Model;
	import org.springframework.web.bind.annotation.GetMapping;
	import org.springframework.web.bind.annotation.PostMapping;
	import org.springframework.web.bind.annotation.RequestParam;
	
	import com.ParkingManagement.entity.Availability;
	import com.ParkingManagement.Repository.AvailabilityRepository;
	@Controller
	public class AvailabilityController {
		@Autowired
		private AvailabilityRepository availabilityrepo;
		@GetMapping("/home")
		public String home()
		{
			return "home";
		}
		
		@PostMapping("/availability")
		public String viewallocation(Model model) {
	    List<Availability> vehicle = availabilityrepo.findAll();
	    model.addAttribute("vehicle", vehicle);
	    
		    return "availability"; 
		}
		@PostMapping("/allocate")
		public String alloacate()
		{
			return "allocate";
		}
		@GetMapping("/allocate")
		public String disp()
		{
			return "allocate";
		}
		@PostMapping("/allocatesubmit")
		public String allocatesubmit(@RequestParam("name") String name,@RequestParam("phonenumber") String phonenumber,@RequestParam("vehicle") String vehicle,
				@RequestParam("regno") String regno,@RequestParam("color") String color,@RequestParam("model") String carmodel,@RequestParam("address") String address,@RequestParam("entrydate") String entrydate,@RequestParam("slotno") String slotno,Model model)
		{
			try {
				Availability a=new Availability(regno,vehicle,name,phonenumber,color,carmodel,address,entrydate,slotno);
				availabilityrepo.save(a);
				return "added";
				}
			catch (DataIntegrityViolationException e) {
		    
				String errorMessage = "Slot is already occupied";
				String encodedError = URLEncoder.encode(errorMessage, StandardCharsets.UTF_8);
				return "redirect:/allocate?error=" + encodedError;
		   
			
			}
		}
	
		/*
		 * @PostMapping("/releaseslot") public String release() { return "release"; }
		 * 
		 * @PostMapping("releasing") public String releasing(@RequestParam("refno") int
		 * refno) { Availability a = availabilityrepo.findByCustomerid(refno);
		 * if(a.equals(refno)) { return "release2"; } return "release3"; }
		 */
		@PostMapping("/delete")
		public String deleteVehicle(@RequestParam("customerid") int customerid) {
		    Optional<Availability> optional = availabilityrepo.findByCustomerid(customerid);
		    optional.ifPresent(availabilityrepo::delete); // only deletes if present
		    return "redirect:/availability";
		}
		
		@GetMapping("/availability")
		public String viewallocation1(Model model) {
		    List<Availability> vehicle = availabilityrepo.findAll();
		    model.addAttribute("vehicle", vehicle);
		    return "availability"; 
		}

	
	
	
		@PostMapping("/vi")
		public String viewavails(Model model)
		{
			 List<Availability> vehicle = availabilityrepo.findAll();
			 model.addAttribute("vehicle", vehicle);
			return "avails";
		}
	
		@PostMapping("/slotpathway")
		public String slotpathway()
		{
			return "pathway";
		}
	}