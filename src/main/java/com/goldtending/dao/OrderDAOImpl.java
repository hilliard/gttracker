package com.goldtending.dao;

import java.util.List;

import com.goldtending.entity.Order;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderDAOImpl implements OrderDAO {

    @Autowired
    private SessionFactory sessionFactory;

    public List<Order> getOrders() {

        // get the current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // create a query
        Query<Order> theQuery = currentSession.createQuery("from Order order by id",
                Order.class);

        // get the list of orders
        List<Order> orders = theQuery.getResultList();

        // return the list of orders

        return orders;
    }

    @Override
    public void saveOrder(Order theOrder) {
        // get the current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // save the order
        currentSession.saveOrUpdate(theOrder);
    }

    @Override
    public Order getOrder(int theId) {
        // get the current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // read the object
        Order theOrder = currentSession.get(Order.class, theId);

        return theOrder;
    }

    @Override
    public void deleteOrder(int theId) {

        // get the current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // delete the object with the primary key
        Query theQuery = currentSession.createQuery("delete from Order where id=:orderId");
        theQuery.setParameter("orderId", theId);

        // execute the query
        theQuery.executeUpdate();
    }


}
