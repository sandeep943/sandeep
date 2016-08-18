package com.niit.sport.dao;


import java.util.List;

import com.niit.sport.model.Product;

public interface ProductDao {

    List<Product> getProductList();

    Product getProductById (int id);

    void addProduct(Product product);

    void editProduct(Product product);

    void deleteProduct(Product product);
}
