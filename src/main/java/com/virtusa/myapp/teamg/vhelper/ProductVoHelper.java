package com.virtusa.myapp.teamg.vhelper;


import com.virtusa.myapp.teamg.model.Product;

import com.virtusa.myapp.teamg.vo.ProductVO;



public class ProductVoHelper {
    private static ProductVoHelper productVoHelper;

    public static ProductVoHelper getInstance() {
        if (productVoHelper == null)
            productVoHelper = new ProductVoHelper();

        return productVoHelper;
    }
    public Product parseProductVoToEntity(ProductVO productVO) {
        Product product=new Product();
        product.setProductid(productVO.getProductid());
        product.setCategory(productVO.getCategory());
        product.setProductname(productVO.getProductname());
        product.setProductserialnumber(productVO.getProductserialnumber());
        product.setQuantitesreceived(productVO.getQuantitesreceived());
        product.setPriceperunit(productVO.getPriceperunit());
        product.setVendorname(productVO.getVendorname());
        product.setQuantityavailable(productVO.getQuantityavailable());
        product.setExpirydate(productVO.getExpirydate());
        return product;
    }
}
