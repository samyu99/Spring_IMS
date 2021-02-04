package com.virtusa.myapp.teamg.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.virtusa.myapp.teamg.model.CartLineItem;
import com.virtusa.myapp.teamg.repository.CartLineItemRepository;



@Service
@Transactional
public class CartLineItemService {
	
	@Autowired
	private CartLineItemRepository cartlineitemrepository;
	
	public CartLineItemService(CartLineItemRepository cartlineitemrepository) {
		this.cartlineitemrepository = cartlineitemrepository;
	}
	
	public void saveMyCartLineItem(CartLineItem cartlineitem){
		cartlineitemrepository.save(cartlineitem);
	}
	
	public List<CartLineItem> findAll() {
		return (List<CartLineItem>) cartlineitemrepository.findAll();
	}
	
}
