package com.niit.sportsgear1.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.sportsgear1.Model.CategoryModel;

@Repository
public class CategoryDAOimpl implements CategoryDAO {
	@Autowired(required=true)
	private SessionFactory sessionFactory;
	    @Transactional
		public void insertCategoryModel(CategoryModel u)
		{
			Session s=this.sessionFactory.openSession();
			Transaction t=s.beginTransaction();
			s.save(u);
			t.commit();

}
}