package com.virtusa.myapp.teamg.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.virtusa.myapp.teamg.model.Customer;
import com.virtusa.myapp.teamg.repository.CustomerRepository;



@Service
@Transactional
public class CustomerService {
	@Autowired
	private CustomerRepository customerrepository;


	public CustomerService(CustomerRepository customerrepository) {
		this.customerrepository = customerrepository;
	}
	
	public void saveMyCustomer(Customer customer){
		customerrepository.save(customer);
	}
	
	public Customer getByCustomerName(String customerName){
		return customerrepository.findByCustomername(customerName);
	}
	
	public Customer getByCustomerId(int custid){
		return customerrepository.findByCustid(custid);
	}

	public List<Customer> findAll() {
		return (List<Customer>) customerrepository.findAll();
		
	}

	
}
