package com.goldtending.dao;

import java.util.List;

import com.goldtending.entity.Order;

public interface OrderDAO {

    public List<Order> getOrders();

    public void saveOrder(Order theOrder);

    public Order getOrder(int theId);

    public void deleteOrder(int theId);

}
