package DAO;

import java.util.List;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import model.UserRole;
import model.Users;

import org.hibernate.Query;



import model.Register;

@Repository("registerDAO")
public class RegisterDAOImpl implements RegisterDAO{
	
	@Autowired
    SessionFactory sessionFactory;
	public RegisterDAOImpl() {
		// TODO Auto-generated constructor stub
	}
	
	public RegisterDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public List<Register> list() {
		 Session session = sessionFactory.openSession();  
		  @SuppressWarnings("unchecked")  
		  List<Register> ProductList = session.createQuery("from Register")  
		    .list();  
		  session.close();  
		  return ProductList; 
		
	}

	public Register get(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Transactional
	public void saveOrUpdate(Register register) {
		sessionFactory.getCurrentSession().saveOrUpdate(register);
		
		 Users newUser = new Users();
         newUser.setUsername(register.getUserid());
         newUser.setPassword(register.getPassword());
         newUser.setEnabled(true);

         UserRole newUserRole = new UserRole();
         newUserRole.setUsername(register.getUserid());
         
         newUserRole.setRole("ROLE_USER");
         sessionFactory.getCurrentSession().saveOrUpdate(newUser);
         sessionFactory.getCurrentSession().saveOrUpdate(newUserRole);
         
	    // System.out.println(p.getPassword());
        // tx.commit();
	     //sessionFactory.getCurrentSession().flush();
	    // sessionFactory.getCurrentSession().close();
		
		
		
		
	}

	public void delete(String id) {
		// TODO Auto-generated method stub
		
	}

	@Transactional
	public boolean isValidUser(String id, String password) {
		String hql = "from Register where userid= '" + id + "' and " + " password ='" + password+"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Register> list = (List<Register>) query.list();
		
		if (list != null && !list.isEmpty()) {
			return true;
		}
		
		return false;
	}

	
	
	

}
