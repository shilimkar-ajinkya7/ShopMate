package com.tka.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.tka.model.Customer;
import com.tka.service.CustomerService;

import jakarta.servlet.http.HttpSession;

@Controller
public class CustomerController {
	
	@Autowired
	CustomerService customerService;
	
	@PostMapping("/register-customer")
	public String addCustomer(@ModelAttribute Customer customer,Model model) {
		System.out.println("Customer>>"+customer);
		customerService.addCustomer(customer);
		model.addAttribute("msg","user registered successfully!!");
		return "login";
	}
	
	@PostMapping("/verify-login")
	public String verifyLoginCred(String username,String password,Model model,HttpSession session) {
		Customer customer= customerService.verifyLoginCred(username,password);	
		if(customer!=null) {
			model.addAttribute("msg", customer.getName()+ " loggedIn successfull!!");
			if(username.equalsIgnoreCase("admin")) {
			session.setAttribute("log", "admin");
			} else {
			session.setAttribute("log", "user");
			}
			session.setAttribute("id", customer.getCid());
			return "home";
		}
		model.addAttribute("msg", "User loggedIn Failed!!");
		return "login";  //return if failed
	}
	
	@GetMapping("/profile")
	public String getCustomer(Model model,HttpSession session) {
		String log = (String) session.getAttribute("log");
		if(log.equals("user")){
		int id = (int) session.getAttribute("id");
		Customer customer=customerService.getCustomerById(id);
		model.addAttribute("customer", customer);
		    return "profile";
		}
        model.addAttribute("msg", "Login First**");
		return "login";
	}
	
	@GetMapping("/update-profile")
	public String updateCustomer() {
		return "profile";
	}

}
