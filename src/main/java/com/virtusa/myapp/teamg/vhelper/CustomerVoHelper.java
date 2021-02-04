package com.virtusa.myapp.teamg.vhelper;
import com.virtusa.myapp.teamg.model.Customer;

import com.virtusa.myapp.teamg.vo.CustomerVO;


public class CustomerVoHelper {
    private static CustomerVoHelper customerHelper;

    public static CustomerVoHelper getInstance() {
        if(customerHelper==null)
            customerHelper= new CustomerVoHelper();

        return customerHelper;
    }

    public Customer parseCustomerVoToEntity(CustomerVO customerVO) {
        Customer customer=new Customer();
        customer.setCustid(customerVO.getCustid());
        customer.setCustomername(customerVO.getCustomername());
        customer.setCustomeremail(customerVO.getCustomeremail());
        customer.setCustomeraddress(customerVO.getCustomeraddress());
        customer.setCustomercity(customerVO.getCustomercity());
        customer.setCustomerpincode(customerVO.getCustomerpincode());
        customer.setCurrentdate(customerVO.getCurrentdate());
       return customer;
    }

}
