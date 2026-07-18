package com.tka.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.tka.model.Customer;

public interface CustomerRepo extends JpaRepository<Customer, Integer> {

	

}
