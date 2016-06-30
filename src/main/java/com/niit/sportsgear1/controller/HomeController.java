package com.niit.sportsgear1.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.sportsgear1.Model.CategoryModel;
import com.niit.sportsgear1.Model.ProductModel;
import com.niit.sportsgear1.Model.SignupModel;
import com.niit.sportsgear1.Model.SupplierModel;
import com.niit.sportsgear1.service.CategoryService;
import com.niit.sportsgear1.service.ProductService;
import com.niit.sportsgear1.service.SupplierService;
import com.niit.sportsgear1.service.UserService;

@Controller
public class HomeController {
	@Autowired
	UserService us;
	
	@Autowired
	CategoryService cs;
	
	@Autowired
	SupplierService ss;
	
	@Autowired
	ProductService ps;
	
	@RequestMapping("/")
	public ModelAndView getHomePage() {

	
		ModelAndView mv=new ModelAndView("index");
		return mv;
	}
	@RequestMapping("/signup")
	public ModelAndView signup() {
        //us.insertSignupModel(sm);
		
		return new ModelAndView("signup","command",new SignupModel());
	}
	@RequestMapping("/addcustomer")
		public ModelAndView addCustomer(@ModelAttribute("SignupModel") SignupModel sm ) {
		System.out.println("in add customer");
            us.insertSignupModel(sm);
			
			ModelAndView mv=new ModelAndView("signup","command",new SignupModel());
			return mv;
		}

		
	@RequestMapping("/login")
	public ModelAndView login() {

		
		ModelAndView mv=new ModelAndView("login");
		return mv;
	}
	@RequestMapping("/customercare")
	public ModelAndView customercare() {

		
		ModelAndView mv=new ModelAndView("customercare");
		return mv;
	}
	@RequestMapping("/categories")
	public ModelAndView category() {

		return new ModelAndView("category","command",new CategoryModel());
	}
	@RequestMapping("/addcategory")
	public ModelAndView addCategory(@ModelAttribute("CategoryModel") CategoryModel cm ) {
	System.out.println("in add category");
       cs.insertCategoryModel(cm);		
		ModelAndView mv=new ModelAndView("category","command",new CategoryModel());
		return mv;
	}
	@RequestMapping("/suppliers")
	public ModelAndView supplier() {

		return new ModelAndView("supplier","command",new SupplierModel());
	}
	@RequestMapping("/addsupplier")
	public ModelAndView addSupplier(@ModelAttribute("SupplierModel") SupplierModel sm ) {
	System.out.println("in add supplier");
       ss.insertSupplierModel(sm);		
		ModelAndView mv=new ModelAndView("supplier","command",new SupplierModel());
		return mv;
	}
	
	@RequestMapping("/Products")
	public ModelAndView product() {

		return new ModelAndView("product","command",new ProductModel());
	}
	@RequestMapping("/addproduct")
	public ModelAndView addProduct(@ModelAttribute("ProductModel") ProductModel pm ) {
	System.out.println("in add product");
        ps.insertProductModel(pm);		
		ModelAndView mv=new ModelAndView("product","command",new ProductModel());
		return mv;
	}

	@RequestMapping("/adminhome")
	public ModelAndView adminhome() {

		
		ModelAndView mv=new ModelAndView("adminhome");
		return mv;
	}
}