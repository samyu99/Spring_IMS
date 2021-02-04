package com.virtusa.myapp.teamg.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.virtusa.myapp.teamg.model.Customer;


@Repository
public interface CustomerRepository extends CrudRepository<Customer,Integer>{

	public Customer findByCustomername(String customername);
	
	public Customer findByCustid(int custid);


}
