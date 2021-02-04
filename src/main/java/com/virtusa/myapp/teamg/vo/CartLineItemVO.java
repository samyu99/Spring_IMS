package com.virtusa.myapp.teamg.vo;


import com.virtusa.myapp.teamg.model.MyCartOrder;
import com.virtusa.myapp.teamg.model.Product;

public class CartLineItemVO {
	
	private int id;

	private MyCartOrder mycart;
	
	private Product product;
	
	private int quantitysold;
		
	private int itemprice;
	
	public CartLineItemVO() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public MyCartOrder getMycart() {
		return mycart;
	}

	public void setMycart(MyCartOrder mycart) {
		this.mycart = mycart;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public int getQuantitysold() {
		return quantitysold;
	}

	public void setQuantitysold(int quantitysold) {
		this.quantitysold = quantitysold;
	}

	public int getItemprice() {
		return itemprice;
	}

	public void setItemprice(int itemprice) {
		this.itemprice = itemprice;
	}

	@Override
	public String toString() {
		return "CartLineItemVO [id=" + id + ", mycart=" + mycart + ", product=" + product + ", quantitysold="
				+ quantitysold + ", itemprice=" + itemprice + "]";
	}

	

	
}
