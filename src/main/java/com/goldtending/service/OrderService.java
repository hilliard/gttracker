package com.goldtending.service;

import java.util.List;
import com.goldtending.entity.Order;

public interface OrderService {

    public List<Order> getOrders();

    public void saveOrder(Order theOrder);

    public Order getOrder(int theId);

    public void deleteOrder(int theId);
}
