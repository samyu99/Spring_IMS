package com.virtusa.myapp.teamg.vhelper;

import com.virtusa.myapp.teamg.model.CartLineItem;
import com.virtusa.myapp.teamg.vo.CartLineItemVO;

public class CartLineItemvHelper {
	
	private static CartLineItemvHelper cvHelper;
	
	 private CartLineItemvHelper() {
	        // nothing
	    }

	    public static CartLineItemvHelper getInstance() {
	        if (cvHelper == null) {
	        	cvHelper = new CartLineItemvHelper();
	        }
	        return cvHelper;
	    }

	    public CartLineItem parseCartLineItemtoCartLineEnty(CartLineItemVO cvo){
	    	CartLineItem cart = new CartLineItem();
	    	
	    	cart.setId(cvo.getId());
	    	cart.setItemprice(cvo.getItemprice());
	    	cart.setMycart(cvo.getMycart());
	    	cart.setProduct(cvo.getProduct());
	    	cart.setQuantitysold(cvo.getQuantitysold());
	    	
	        
	        return cart;
	    }

}
