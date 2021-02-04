package com.virtusa.myapp.teamg.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.virtusa.myapp.teamg.model.Customer;
import com.virtusa.myapp.teamg.model.MyCartOrder;
import com.virtusa.myapp.teamg.repository.MyCartOrderRepository;


@Service
@Transactional
public class MyCartOrderService {

	@Autowired
	MyCartOrderRepository myCartRepo;

	public void save(MyCartOrder myOrder) {
		

		myCartRepo.save(myOrder);
	}

	public List<MyCartOrder> findall() {

		return myCartRepo.findAll();
	}

	
	public List<MyCartOrder> findListByCustomerId(Customer cust) {
		List<MyCartOrder> myProductList = new ArrayList<>();
		for (MyCartOrder fav : myCartRepo.findByCust(cust)) {
			myProductList.add(fav);
		}
		return myProductList;

	} 

	public void deleteMyProd(int productid) {
		myCartRepo.deleteById(productid);

	}

	public List<MyCartOrder> findList() {
		List<MyCartOrder> myProductList = new ArrayList<>();
		for (MyCartOrder fav : myCartRepo.findAll()) {
			myProductList.add(fav);
		}
		return myProductList;

	}
	
	public List<MyCartOrder> search(int min,int max){
		return myCartRepo.search(min, max);
	}

	public List<MyCartOrder> searchOrdersBetweenDates(Date mindate, Date maxdate) {
		return myCartRepo.searchOrdersBetweenDates(mindate, maxdate);
	}


}
