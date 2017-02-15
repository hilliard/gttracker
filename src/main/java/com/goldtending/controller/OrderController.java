package com.goldtending.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

import com.goldtending.entity.Order;
import com.goldtending.service.OrderService;

@Controller
@RequestMapping("/order")
public class OrderController {

    // need to inject service into this controller
    @Autowired
    private OrderService orderService;

    @GetMapping("list")
    public String listOrders(Model theModel){

        // get the orders from the dao
        List<Order> theOrders = orderService.getOrders();

        // add the orders to the model
        theModel.addAttribute("orders", theOrders);

        // forward to jsp page
        return "list-orders";
    }

    @GetMapping("/showFormForAdd")
    public String showFormForAdd(Model theModel) {

        // create new model attribute to bind form data
        Order theOrder = new Order();

        theModel.addAttribute("orders", theOrder);

        // find jsp page from the view
        return "order-form";
     }

    @PostMapping("/saveOrder")
    public String saveOrder(@ModelAttribute("orders") Order theOrder) {

        // save the order using the service
        orderService.saveOrder(theOrder);

        return "redirect:/order/list";
    }

    @GetMapping("/showFormForUpdate")
    public String showFormForUpdate(@RequestParam("orderId") int theId,
                                    Model theModel) {

        // get the order from the service
        Order theOrder = orderService.getOrder(theId);

        // set order as model attribute to prepopulate the form
        theModel.addAttribute("orders", theOrder);

        // send over to the form
        return "order-form";
    }

    @GetMapping("/delete")
    public String deleteOrder(@RequestParam("orderId") int theId) {

        // delete the order
        orderService.deleteOrder(theId);

        return "redirect:/order/list";
    }

}
