package com.goldtending.dao;

import com.goldtending.entity.Product;

import java.util.List;

/**
 * Created by hilliard on 2/11/2017.
 */
public interface ProductDAO {

    public List<Product> getProducts();

    public void saveProduct(Product theProduct);

    public Product getProduct(int theId);

    public void deleteProduct(int theId);
}

