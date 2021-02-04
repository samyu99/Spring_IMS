package com.virtusa.myapp.teamg.vo;

import java.io.Serializable;



public class ProductVO implements Serializable {
	
    private int productid;

    private String category;

    private String productname;

    private String productserialnumber;

    private int quantitesreceived;

    private int priceperunit;

    private String vendorname;

    private int quantityavailable;

    private String expirydate;



    public String getExpirydate() { return expirydate; }
    public void setExpirydate(String expirydate) { this.expirydate = expirydate; }





    public int getQuantityavailable() {
        return quantityavailable;
    }




    public void setQuantityavailable(int quantityavailable) {
        this.quantityavailable = quantityavailable;
    }




    public ProductVO() {
        super();
    }





    public  ProductVO(int productid, String category, String productname, String productserialnumber, int quantitesreceived,
                    int priceperunit, String vendorname, int quantityavailable,String  expirydate) {
        super();
        this.productid = productid;
        this.category = category;
        this.productname = productname;
        this.productserialnumber = productserialnumber;
        this.quantitesreceived = quantitesreceived;
        this.priceperunit = priceperunit;
        this.vendorname = vendorname;
        this.quantityavailable = quantityavailable;
        this.expirydate= expirydate;
    }




    public int getProductid() {
        return productid;
    }

    public void setProductid(int productid) {
        this.productid = productid;
    }

    public String getProductname() {
        return productname;
    }

    public void setProductname(String productname) {
        this.productname = productname;
    }

    public String getProductserialnumber() {
        return productserialnumber;
    }

    public void setProductserialnumber(String productserialnumber) {
        this.productserialnumber = productserialnumber;
    }

    public int getQuantitesreceived() {
        return quantitesreceived;
    }

    public void setQuantitesreceived(int quantitesreceived) {
        this.quantitesreceived = quantitesreceived;
    }

    public int getPriceperunit() {
        return priceperunit;
    }

    public void setPriceperunit(int priceperunit) {
        this.priceperunit = priceperunit;
    }

    public String getVendorname() {
        return vendorname;
    }

    public void setVendorname(String vendorname) {
        this.vendorname = vendorname;
    }

    public String getCategory() {
        return category;
    }




    public void setCategory(String category) {
        this.category = category;
    }




    @Override
    public String toString() {
        return "Product [productid=" + productid + ",category=" + category + ", productname=" + productname + ", productserialnumber="
                + productserialnumber + ", quantitesreceived=" + quantitesreceived + ", priceperunit=" + priceperunit
                + ", vendorname=" + vendorname + ", quantityavailable=" + quantityavailable+ ",expirydate= "+ expirydate +"]";

    }


}
