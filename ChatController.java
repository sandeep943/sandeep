package com.niit.controller;

import java.io.IOException;
import java.util.Date;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import model.Forum;

import DAO.ForumDaoInterface;

import model.Blog;
import DAO.BlogDAO;
import DAO.RegisterDAO;

import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;

import model.Message;
import model.OutputMessage;
import model.Register;

@Controller
public class ChatController {
	
	@Autowired
    private JavaMailSender mailSender;
	
	@Autowired
	private RegisterDAO registerDAO;
	
	@Autowired
	private BlogDAO blogdao;
	
	@Autowired
	private ForumDaoInterface fservice;
	
	
	
	@RequestMapping("/start")
	public String viewApplication() {
		System.out.println("chat controller");
		return "ChatView";
	}

	@MessageMapping("/chat")
	@SendTo("/topic/message")
	public OutputMessage sendMessage(Message message) {
		return new OutputMessage(message, new Date());
	}
	
	
	@RequestMapping("/")
	public String viewApplication1() {
		
		return "home";
	}
	
	@RequestMapping("/welcome")
	public String viewApplication2() {
		
		return "welcome";
	}
	
	 @RequestMapping("/cs")
	   public String hello2() {
		 
		 System.out.println("hello2");
	        
	   
	        
	       return "contactUs";
	        
	   }
	 @RequestMapping("/register")
	   public String hello3() {
		 
		 System.out.println("hello3");
	        
		 
		 
	   
	        
	       return "Register";
	        
	   }
	 @RequestMapping("/Login")
	   public String hello4() {
		 
		 System.out.println("hello3");
	        
	   
	        
	       return "Login";
	        
	   }
	 
	 @RequestMapping("/addPerson")
		public ModelAndView addCategory(@ModelAttribute Register register) {
		 System.out.println("inside add method");
		 
		 System.out.println(register);
			System.out.println(register.getEmailid());
			String receiver=register.getEmailid();
			String subject="welcome";
			String message1="welcome to expro....";
			
			
			
			
			SimpleMailMessage email= new SimpleMailMessage();
			
			email.setTo(receiver);
	        email.setSubject(subject);
	        email.setText(message1);
	        
	        registerDAO.saveOrUpdate(register);
	         
	        // sends the e-mail
	        mailSender.send(email);
	         
			
			
		  return new ModelAndView("/success1");
		 }
	 
	 @RequestMapping("/isValidUser")
		public ModelAndView isValidUser(@RequestParam(value = "name") String name,
				@RequestParam(value = "password") String password,@RequestParam(value = "gender") String gender) {
			System.out.println("in controller");

			String message;
			System.out.println(gender);
			ModelAndView mv ;
			if (registerDAO.isValidUser(name, password)) 
			{
				message = "Valid credentials";
				 mv = new ModelAndView("success");
			} else {
				message = "Invalid credentials";
				 mv = new ModelAndView("login");
			}

			mv.addObject("message", message);
			mv.addObject("name", name);
			return mv;
		}
	
	 
	 @RequestMapping(value = "/blogadd", method = RequestMethod.GET)
	   public ModelAndView addBlog(@ModelAttribute("command")Blog blogBean,BindingResult result)
	   {
			 System.out.println("$$$$$$$$$$$$$$$$$$$$");
			  
			  ModelAndView model=new ModelAndView("BlogAdd");
			  model.addObject("blog",blogBean);
			 // System.out.println("Hello1");
			  return model;
	       
	   }
	 @RequestMapping(value="/BlogSave",method=RequestMethod.POST)
	 
	  public ModelAndView saveBlog(@ModelAttribute("blog") Blog blogBean,BindingResult result) 
	  {
		  blogdao.addBlog(blogBean);
		  return new ModelAndView("BlogAdd");
	  }
	 
		@RequestMapping("/ViewBlog")
		public ModelAndView viewBlog() 
		{
			 // System.out.println("in view all");
			  List<Blog> blogList = blogdao.getList();
			 // System.out.println("end view all");
			  return new ModelAndView("BlogView", "blogList", blogList);  

		} 
		
//		@RequestMapping("/admin/blogViewApprove")
//		public ModelAndView viewBlogApprove() 
//		{
//			 // System.out.println("in view all");
//			  List<Blog> blogList = service.getListApprove();
//			 // System.out.println("end view all");
//			  return new ModelAndView("BlogViewApprove", "blogList", blogList);  
//
//		}  
//		
//		 @RequestMapping("/admin/blogApprove")  
//		  public ModelAndView approveBlog(@RequestParam int blogid, @ModelAttribute Blog blog) {  
//		   Blog blogObject =service.getBlogbyId(blogid);
//		  // System.out.println("EditMovie:"+movieObject.getMoviename());
//		   return new ModelAndView("BlogApprove", "blog", blogObject);  
//		  }  
//		 
//		 @RequestMapping("/admin/BlogDelete")
//		  public String deleteBlog(@RequestParam("blogid")int blogid)
//		  {
//			  service.deleteBlog(blogid);
//			  return "redirect:ViewAll";
//			  
//		  }
//	
//	
		
		@RequestMapping("/admin/blogViewApprove")
		public ModelAndView viewBlogApprove() 
		{
			 // System.out.println("in view all");
			  List<Blog> blogList = blogdao.getListApprove();
			 // System.out.println("end view all");
			  return new ModelAndView("BlogViewApprove", "blogList", blogList);  

		} 
		
		
		 @RequestMapping("/admin/blogApprove")  
		  public ModelAndView approveBlog(@RequestParam int blogid, @ModelAttribute Blog blog) {  
		   Blog blogObject =blogdao.getBlogbyId(blogid);
		  // System.out.println("EditMovie:"+movieObject.getMoviename());
		   return new ModelAndView("BlogApprove", "blog", blogObject);  
		  }  
		 
		 @RequestMapping("/admin/updateBlog")  
		  public ModelAndView updateBlog(@ModelAttribute("blog") Blog blog,BindingResult result) 
		  {  
			   blogdao.approveBlog(blog); 
			  return new ModelAndView("redirect:/ViewBlog");  

		 }
		 
		 
		 
		 @RequestMapping("/admin/BlogDelete")
		  public String deleteBlog(@RequestParam("blogid")int blogid)
		  {
			  blogdao.deleteBlog(blogid);
			  return "redirect:ViewAll";
			  
		  }
		 
		 @RequestMapping("/BlogViewRecord")
		  public ModelAndView getRecord(@RequestParam int blogid,@ModelAttribute Blog blog) { 
			 			System.out.println("Hello");
					   Blog blogObject =blogdao.getBlogbyId(blogid); 
					   System.out.println("Hello");
					   return new ModelAndView("BlogViewRecord", "blogObject", blogObject);  
					  }
		 
		 
		 
		 
		 @RequestMapping("/Forum")
			public String createBlog(HttpServletRequest request,Model model)
			{
				String name=request.getParameter("forum");
				model.addAttribute("name",name);
				System.out.println("In Forum Controller");
				return "Forum";
			}
			@ModelAttribute("forum")
			public Forum returnObject()
			{
				return new Forum();
			}
			@RequestMapping("/postF")
			public String postblog(@ModelAttribute("forum") Forum forum , Model model) throws IOException
			{
				System.out.println("I am in Forum");	
				//forum.setForumUserName("bhagyashree");
				Authentication auth = SecurityContextHolder.getContext().getAuthentication();
				  if (!(auth instanceof AnonymousAuthenticationToken)) {
					UserDetails userDetail = (UserDetails) auth.getPrincipal();
					forum.setForumUserName(userDetail.getUsername());
				  }
				forum.setCreationdatetime(new java.util.Date());	
				fservice.createNewForum(forum);	
				return "Forum";
			}
			
			@SuppressWarnings("unchecked")
			@RequestMapping("/GsonCon1")
			public @ResponseBody String getValues() throws Exception
			{
				List<Forum> flist;
				String result="";
				flist = fservice.getForum();
				Gson gson = new Gson();
				result = gson.toJson(flist);
				System.out.println("before flist");
				System.out.println(flist);
				return result;
			}
			@RequestMapping("/ForumView")
			public ModelAndView getRecord(@RequestParam int forumid, @ModelAttribute Forum forum) 
			{
				Forum fObject = fservice.getForumbyId(forumid);
				System.out.println("Hello");
				return new ModelAndView("ForumView", "fObject", fObject);
			}
			
			@RequestMapping("/Comment")
			public String viewComment() 
			{
				return "ViewComment";
			}
		 
		
		
	
}
