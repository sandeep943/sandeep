package com.niit.sportsgear.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale.Category;

import org.springframework.stereotype.Repository;

@Repository
public class categoryDAO {
	
	public static List<Category> getAllCategories()
	{
		List<Category> list = new ArrayList<Category>();
		categoryDAO c1=new categoryDAO();
		c1.setID("1");
		c1.setName("m");
		c1.setDescription("this is m");
		return list;
	}

	private void setDescription(String string) {
		// TODO Auto-generated method stub
		
	}

	private void setName(String string) {
		// TODO Auto-generated method stub
		
	}

	private void setID(String string) {
		// TODO Auto-generated method stub
		
	}

	public static List<Category> updateCategories() {
		// TODO Auto-generated method stub
		return null;
	}
}
