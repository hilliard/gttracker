package com.goldtending.service;

import java.util.List;
import com.goldtending.entity.Product;

public interface ProductService {

    public List<Product> getProducts();

    public void saveProduct(Product theProduct);

    // added by eclipes
    public Product getProduct(int theId);

    // added by eclipse
    public void deleteProduct(int theId);
}
