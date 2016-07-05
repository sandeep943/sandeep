package com.niit.sportsgear1.service;

import java.util.List;

import com.niit.sportsgear1.Model.ProductModel;

public interface ProductService {
	public void insertProductModel(ProductModel u);
	List<ProductModel> getProductList();

}
