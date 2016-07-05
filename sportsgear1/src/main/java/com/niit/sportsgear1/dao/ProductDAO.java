package com.niit.sportsgear1.dao;

import java.util.List;

import com.niit.sportsgear1.Model.ProductModel;

public interface ProductDAO {
	public void insertProductModel(ProductModel u);
	public List<ProductModel> getProductList();

}
