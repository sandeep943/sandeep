package com.niit.sportsgear1.dao;

import java.util.List;

import com.niit.sportsgear1.Model.CategoryModel;

public interface CategoryDAO {
	public void insertCategoryModel(CategoryModel u);
	public List<CategoryModel> getCategoryList();


}
