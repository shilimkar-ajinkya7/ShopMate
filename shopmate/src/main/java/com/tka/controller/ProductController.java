package com.tka.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.tka.model.Product;
import com.tka.service.ProductService;

import jakarta.servlet.http.HttpSession;

@Controller
public class ProductController {
	
	@Autowired
	ProductService productService;
	
	@GetMapping("/get-Allproducts")
	public String getAllProducts(Model model) {
	    List<Product> products=productService.getAllProducts();
		model.addAttribute("products", products);
		return "allProductsDetails";
	}
	
	@GetMapping("/shop")
	public String shopProducts(Model model,HttpSession session) {
		String log = (String) session.getAttribute("log");
		if(log.equals("user")) {
		List<Product> products=productService.getAllProducts();
		model.addAttribute("products", products);
		     return "shop";
		}
		 model.addAttribute("msg", "Login First**");
		return "login";
	}
	
	@GetMapping("/cart")
	public String getCart(Model model,HttpSession session) {
		String log = (String) session.getAttribute("log");
		if(log.equals("user")) {
		List<Product> cartProducts=productService.getCart();
		model.addAttribute("cartProducts", cartProducts);
		double totalBill= productService.getTotalBill();
		model.addAttribute("totalBill", totalBill);
		   return "cart";
	     } 
	    model.addAttribute("msg", "Login First**");
		return "login";
	}
	
	@GetMapping("/add-to-cart/{pid}")
	public String addToCart(@PathVariable int pid,Model model) {
	    Product cartProduct=  productService.addToCart(pid);
		if(cartProduct!=null) {
			model.addAttribute("msg",  cartProduct.getName()  +">> added to cart successfully!!!");
		}
		List<Product> products=productService.getAllProducts();
		model.addAttribute("products", products);
		return "redirect:/shop";
	}
	
	@GetMapping("/buy-now")
	public String buyProducts(Model model) {
		List<Product> Products=productService.getCart();
		model.addAttribute("Products", Products);
		double totalBill= productService.getTotalBill();
		model.addAttribute("totalBill", totalBill);
		return "bill";
	}
	
	@GetMapping("/order")
	public String placeOrder(Model model,HttpSession session) {
		String log = (String) session.getAttribute("log");
		if(log.equals("user")) {
	    double totalBill = productService.getTotalBill();
	    model.addAttribute("totalBill", totalBill);
	        return "order";
		}
		model.addAttribute("msg", "Login First**");
		return "login";
	}

}
