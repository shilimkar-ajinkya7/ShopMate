package com.tka.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import jakarta.servlet.http.HttpSession;

@Controller
public class ShopmateController {
	
	@GetMapping("/")
	public String getIndexPage(HttpSession session) {
		session.setAttribute("log", "");
		return "index";
	}
	
	@GetMapping("/home")
	public String getHomePage(HttpSession session,Model model) {
		String log = (String) session.getAttribute("log");
		if(log.equals("user")) {
		   return "home";
		}
		 model.addAttribute("msg", "Login First**");
		return "login";
	}
	
	@GetMapping("/login")
	public String getLoginPage() {
		return "login";
	}
	
	@GetMapping("/register")
	public String getRegisterPage() {
		return "register";
	}
	
	@GetMapping("/logout")
	public String Logout(HttpSession session) {
		session.setAttribute("log", "");
		return "index";
	}

}
