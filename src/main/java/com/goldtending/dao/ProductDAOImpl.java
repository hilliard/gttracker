package com.goldtending.dao;

import java.util.List;

import com.goldtending.entity.Product;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
// import org.springframework.transaction.annotation.Transactional;
import org.springframework.stereotype.Service;

/**
 * Created by hilliard on 2/11/2017.
 */
@Service
public class ProductDAOImpl implements ProductDAO {

    @Autowired
    private SessionFactory sessionFactory;

    // @Override
    // remove @Transaction cuz its moved to service layer
    // @Transactional
    public List<Product> getProducts() {

        // get the current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // create a query make sure to use 5.2 or later hibernate.query
        Query<Product> theQuery = currentSession.createQuery("from Product order by id",
                Product.class);

        // get the list of products from query
        List<Product> products = theQuery.getResultList();

        // return the list of products

        return products;
    }

    // @Override
    public void saveProduct(Product theProduct) {
        // TODO Auto-generated method stub
        // get current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();
        // save the product to database
        // change this to saveOrUpdate
        // currentSession.save(theProduct);
        currentSession.saveOrUpdate(theProduct);


    }

    //  @Override
    public Product getProduct(int theId) {

        // get the current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // now read object from db using id
        Product theProduct = currentSession.get(Product.class, theId);

        return theProduct;
    }

    // @Override
    public void deleteProduct(int theId) {
        // TODO Auto-generated method stub

        // get the current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // delete the object with the primary key
        Query theQuery = currentSession.createQuery("delete from Product where id=:productId");
        theQuery.setParameter("productId", theId);

        // execute the query
        theQuery.executeUpdate();

    }


}

