package com.virtusa.myapp.teamg.model;

import java.io.Serializable;
import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;

@Entity
@Table(name = "customer")
public class Customer implements Serializable {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="cust_id")
	private int custid;  //findById
	
	@Column(name = "custname")
	private String customername;  //findByCustomername
	
	@Column(name = "custemail")
	private String customeremail;
	
	@Column(name = "custaddress")
	private String customeraddress;
	
	@Column(name = "custcity")
	private String customercity;
	
	@Column(name = "custpincode")
	private long customerpincode;
	
	@Column(name = "currdate")
	@CreationTimestamp
	private LocalDateTime currentdate;
	

	public Customer() {
		super();
	}
	

	public Customer(int custid, String customername, String customeremail,String customeraddress, String customercity,
			long customerpincode, LocalDateTime currentdate) {
		super();
		this.custid = custid;
		this.customername = customername;
		this.customeremail=customeremail;
		this.customeraddress = customeraddress;
		this.customercity = customercity;
		this.customerpincode = customerpincode;
		this.currentdate = currentdate;
	}



	public String getCustomeremail() {
		return customeremail;
	}


	public void setCustomeremail(String customeremail) {
		this.customeremail = customeremail;
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
		return "Customer [custid=" + custid + ", customername=" + customername + ", customeraddress=" + customeraddress
				+ ", customercity=" + customercity + ", customerpincode="
				+ customerpincode + ", currentdate=" + currentdate + "]";
	}
	

	
}

