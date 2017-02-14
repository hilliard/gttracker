package com.goldtending.dao;

import java.util.List;

import com.goldtending.entity.Customer;

public interface CustomerDAO {

    public List<Customer> getCustomers();

    public void saveCustomer(Customer theCustomer);

    // added by eclipse
    public Customer getCustomer(int theId);

    public void deleteCustomer(int theId);


}
