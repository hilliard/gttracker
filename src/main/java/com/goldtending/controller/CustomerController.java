package com.goldtending.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

// import com.goldtending.dao.CustomerDAO;

import com.goldtending.entity.Customer;
import com.goldtending.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {

    // need to inject Service into this controller
    @Autowired
    private CustomerService customerService;
    // deleted cuz of service
    // need to inject DAO into this controller
    // @Autowired
    // private CustomerDAO customerDAO;

    // refactor for get mapping restrict to get no post
    // @RequestMapping("/list")
    @GetMapping("/list")
    public String listCustomers(Model theModel) {

        // get the customers from the dao
        // replace this due to service
        // List<Customer> theCustomers = customerDAO.getCustomers();
        List<Customer> theCustomers = customerService.getCustomers();

        // add the the customers to the model
        theModel.addAttribute("customers", theCustomers);

        // forward to jsp page
        return "list-customers";

    }

    @GetMapping("/showFormForAdd")
    public String showFormForAdd(Model theModel) {

        // create new model attribute to bind form data
        Customer theCustomer = new Customer();

        theModel.addAttribute("customers", theCustomer);

        // find jsp page from the view
        return "customer-form";
    }

    @PostMapping("/saveCustomer")
    public String saveCustomer(@ModelAttribute("customers") Customer theCustomer ) {

        // save the customer using the service
        customerService.saveCustomer(theCustomer);

        return "redirect:/customer/list";
    }

    @GetMapping("/showFormForUpdate")
    public String showFormForUpdate(@RequestParam("customerId") int theId,
                                    Model theModel) {

        // get the customer from the service
        Customer theCustomer = customerService.getCustomer(theId);

        // set customer as model attribute to prepopulate the form
        theModel.addAttribute("customers", theCustomer);

        // send over to form
        return "customer-form";
    }

    @GetMapping("/delete")
    public String deleteCustomer(@RequestParam("customerId") int theId) {

        // delete the customer
        customerService.deleteCustomer(theId);

        return "redirect:/customer/list";

    }


}
