package com.goldtending.service;

import java.util.List;
import com.goldtending.entity.Customer;

public interface CustomerService {

    public  List<Customer> getCustomers();

    public void saveCustomer(Customer theCustomer);

    // added by eclipes
    public Customer getCustomer(int theId);

    // added by eclipse
    public void deleteCustomer(int theId);
}

