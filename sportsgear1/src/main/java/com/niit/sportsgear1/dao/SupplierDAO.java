package com.niit.sportsgear1.dao;

import java.util.List;

import com.niit.sportsgear1.Model.SupplierModel;

public interface SupplierDAO {
	
	public void insertSupplierModel(SupplierModel u);
	public List<SupplierModel> getSupplierList();
}
