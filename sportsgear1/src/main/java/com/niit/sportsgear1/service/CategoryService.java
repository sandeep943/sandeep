package com.niit.sportsgear1.service;

import java.util.List;

import com.niit.sportsgear1.Model.CategoryModel;

public interface CategoryService {
	public void insertCategoryModel(CategoryModel u);
	List<CategoryModel> getCategoryList();



}
