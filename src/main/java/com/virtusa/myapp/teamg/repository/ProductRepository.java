package com.virtusa.myapp.teamg.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.virtusa.myapp.teamg.model.Product;



public interface ProductRepository extends CrudRepository<Product,Integer>{

	Product findByProductname(String productname);
	
	@Query("SELECT productname FROM Product where productname like %:keyword%")
	public List<String> search(@Param("keyword") String keyword);

	
	@Query("SELECT p FROM Product p where p.quantityavailable > 0")
    public List<Product> findAllAvailableProducts();

	public Product findByProductid(int id);
}