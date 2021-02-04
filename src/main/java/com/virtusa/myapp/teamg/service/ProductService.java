package com.virtusa.myapp.teamg.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.virtusa.myapp.teamg.model.Product;
import com.virtusa.myapp.teamg.repository.ProductRepository;


@Service
@Transactional
public class ProductService {
	
	@Autowired
	private ProductRepository productrepository;

	public ProductService(ProductRepository productrepository) {
		this.productrepository = productrepository;
	}
	
	public void saveMyProduct(Product product){
		productrepository.save(product);
	}

	public List<Product> findAll() {
		return (List<Product>) productrepository.findAll();
	}
	
	public Product findbyProductname(String productname) {
		return productrepository.findByProductname(productname);
	}
	
	
	public List<String> search(String searchTerm){
		return productrepository.search(searchTerm);
		
	}
	
	public List<Product> findAllAvailableProducts() {
		return productrepository.findAllAvailableProducts();
	}

	public Product findById(int productid) {
		return productrepository.findByProductid(productid);
	}


	public void delete(Product p) {
         productrepository.delete(p);		
	}

	public void deleteAll() {
		productrepository.deleteAll();
		
	}


	
	


}
