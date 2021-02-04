package com.virtusa.myapp.teamg.vo;

import java.io.Serializable;
import java.time.LocalDateTime;

public class CustomerVO implements Serializable {


    private int custid;  
    
    private String customername;  
    
    private String customeraddress;
    
    private String customeremail;

    

	private String customercity;

    private long customerpincode;

    private LocalDateTime currentdate;


    public CustomerVO() {
        super();
    }


    public CustomerVO(int custid, String customername,String customeremail, String customeraddress, String customercity,
                    long customerpincode, LocalDateTime currentdate) {
        super();
        this.custid = custid;
        this.customername = customername;
        this.customeremail= customeremail;
        this.customeraddress = customeraddress;
        this.customercity = customercity;
        this.customerpincode = customerpincode;
        this.currentdate = currentdate;
    }



    public int getCustid() {
        return custid;
    }


    public void setCustid(int custid) {
        this.custid = custid;
    }


    public String getCustomername() {
        return customername;
    }


    public void setCustomername(String customername) {
        this.customername = customername;
    }


    public String getCustomeraddress() {
        return customeraddress;
    }


    public void setCustomeraddress(String customeraddress) {
        this.customeraddress = customeraddress;
    }


    public String getCustomercity() {
        return customercity;
    }


    public void setCustomercity(String customercity) {
        this.customercity = customercity;
    }

    public String getCustomeremail() {
		return customeremail;
	}


	public void setCustomeremail(String customeremail) {
		this.customeremail = customeremail;
	}

    public long getCustomerpincode() {
        return customerpincode;
    }


    public void setCustomerpincode(long customerpincode) {
        this.customerpincode = customerpincode;
    }


    public LocalDateTime getCurrentdate() {
        return currentdate;
    }


    public void setCurrentdate(LocalDateTime currentdate) {
        this.currentdate = currentdate;
    }


    @Override
    public String toString() {
        return "Customer [custid=" + custid + ", customername=" + customername + ", customeremail= "+ customeremail+" customeraddress=" + customeraddress
                + ", customercity=" + customercity + ", customerpincode="
                + customerpincode + ", currentdate=" + currentdate + "]";
    }



}

