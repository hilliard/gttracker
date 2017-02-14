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

// import com.goldtending.dao.ProductDAO;
import com.goldtending.entity.Product;
import com.goldtending.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {

    // need to inject Service into this controller
    @Autowired
    private ProductService productService;

    // deleted cuz of service
    // need to inject DAO into this controller
    // @Autowired
    // private CustomerDAO customerDAO;

    // refactor for get mapping restrict to get no post
    // @RequestMapping("/list")
    @GetMapping("/list")
    public String listproducts(Model theModel) {

        // get the customers from the dao
        // replace this due to service
        // List<Customer> theCustomers = customerDAO.getCustomers();
        List<Product> theProducts = productService.getProducts();

        // add the the customers to the model
        theModel.addAttribute("products", theProducts);

        // forward to jsp page
        return "list-products";

    }

    @GetMapping("/showFormForAdd")
    public String showFormForAdd(Model theModel) {

        // create new model attribute to bind form data
        Product theProduct = new Product();

        theModel.addAttribute("products", theProduct);

        // find jsp page from the view
        return "product-form";
    }

    @PostMapping("/saveProduct")
    public String saveProduct(@ModelAttribute("products") Product theProduct ) {

        // save the customer using the service
        productService.saveProduct(theProduct);

        return "redirect:/product/list";
    }

    @GetMapping("/showFormForUpdate")
    public String showFormForUpdate(@RequestParam("productId") int theId,
                                    Model theModel) {

        // get the customer from the service
        Product theProduct = productService.getProduct(theId);

        // set customer as model attribute to prepopulate the form
        theModel.addAttribute("products", theProduct);

        // send over to form
        return "product-form";
    }

    @GetMapping("/delete")
    public String deleteProduct(@RequestParam("productId") int theId) {

        // delete the customer
        productService.deleteProduct(theId);

        return "redirect:/product/list";

    }

}
