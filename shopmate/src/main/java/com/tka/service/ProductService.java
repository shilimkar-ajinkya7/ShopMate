package com.tka.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tka.model.Product;
import com.tka.repo.ProductRepo;

@Service
public class ProductService {
	
	@Autowired
	ProductRepo productRepo;
	
	List<Product> productCartList;
	
	public ProductService() {
		if(productCartList==null)
			productCartList=new ArrayList<>();
	}

	public List<Product> getAllProducts() {// TODO Auto-generated method stub
		List<Product> products= productRepo.findAll();
		for (Product product : products) {
			String name = product.getName();
			String[] split = name.split(" ");		
			product.setImagepath(split[0].toLowerCase());
		}
		return products;
	}

	public Product addToCart(int id) {
		Product product = productRepo.getById(id);
		productCartList.add(product);
		return product;
	}

	public List<Product> getCart() {
		return productCartList;
	}

	public double getTotalBill() {
		
		double totalBill=0;
		for (Product product : productCartList) {
			totalBill+=product.getPrice();
		}
		return totalBill;
	}

	
	
	

}
