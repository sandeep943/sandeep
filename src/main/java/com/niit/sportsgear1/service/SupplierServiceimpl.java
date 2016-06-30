package com.niit.sportsgear1.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.sportsgear1.dao.SupplierDAO;
import com.niit.sportsgear1.Model.SupplierModel;

@Service
public class SupplierServiceimpl implements SupplierService {
	@Autowired
	SupplierDAO supplierDAO;
	public void insertSupplierModel(SupplierModel u)
	{
		supplierDAO.insertSupplierModel(u);
	}

}
