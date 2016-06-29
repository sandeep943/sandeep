package com.niit.sportsgear1.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.sportsgear1.dao.UserDAO;
import com.niit.sportsgear1.Model.SignupModel;

@Service
public class UserServiceimpl implements UserService{
	@Autowired
	UserDAO userDAO;
	public void insertSignupModel(SignupModel u)
	{
		userDAO.insertSignupModel(u);
	}
	

}
