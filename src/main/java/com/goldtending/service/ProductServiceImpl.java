package com.goldtending.service;

import org.springframework.beans.factory.annotation.Autowired;
import com.goldtending.dao.ProductDAO;
import com.goldtending.entity.Product;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {

    // need to inject product dao
    @Autowired
    private ProductDAO productDAO;


    @Override
    @Transactional
    public List<Product> getProducts() {

        return productDAO.getProducts();
    }


    @Override
    @Transactional
    public void saveProduct(Product theProduct) {
        // TODO Auto-generated method stub
        productDAO.saveProduct(theProduct);

    }


    @Override
    @Transactional
    public Product getProduct(int theId) {
        // TODO Auto-generated method stub
        return productDAO.getProduct(theId);
    }


    @Override
    @Transactional
    public void deleteProduct(int theId) {
        // TODO Auto-generated method stub
        productDAO.deleteProduct(theId);

    }



}
