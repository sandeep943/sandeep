package com.niit.sportsgear1.service;

import java.util.List;


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
	public List<SupplierModel> getSupplierList() {
		// TODO Auto-generated method stub
		System.out.println("In SERVICE");
		List<SupplierModel> a=supplierDAO.getSupplierList();
		System.out.println(a);
		return a;
	
	}

}
