package com.tka.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tka.model.Customer;
import com.tka.repo.CustomerRepo;

@Service
public class CustomerService {
	
	@Autowired
	CustomerRepo customerRepo;

	public void addCustomer(Customer customer) {
		customerRepo.save(customer);
		
	}

	public Customer verifyLoginCred(String username, String password) {
		List<Customer> allCustomers = customerRepo.findAll();
		for (Customer customer : allCustomers) {
			if(customer.getUsername().equals(username))
				if(customer.getPassword().equals(password))
					return customer;
		}
		return null;
	}

	public Customer getCustomerById(int id) {
		return customerRepo.getById(id);
	}

}
