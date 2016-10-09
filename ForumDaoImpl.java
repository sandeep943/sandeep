package DAO;
import java.util.*;


import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import model.Forum;
@Repository
public class ForumDaoImpl implements ForumDaoInterface
{
	@Autowired
	private SessionFactory sessionFactory;

	public void createNewForum(Forum f)
	{
		Session session=sessionFactory.openSession();
		session.save(f);
		session.flush();
	}
	@SuppressWarnings("unchecked")
	public List<Forum> getForumList(String username) {

		Session session=sessionFactory.openSession();
		Criteria c=session.createCriteria(Forum.class);
		c.add(Restrictions.eq("user_name", username));
		List <Forum> forum=c.list();
		return forum;
	}
	public void delete(int fid) {
		Forum f = new Forum();
		
		sessionFactory.getCurrentSession().delete(f);
		System.out.println("Deleting the Forum");
	}
	

	
	@SuppressWarnings("unchecked")
	public List<Forum> getForum()
	{
//		List<Forum> forums;
//		System.out.println("DAO Implementation");
//		Session ss1 = sessionFactory.getCurrentSession();
//		Transaction tx = ss1.beginTransaction();
//		Query qry = ss1.createQuery("from Forum");
//		System.out.println(qry.toString());
//		forums = (List<Forum>)qry.list();
//		System.out.println("dat is fetching");
//		tx.commit();
//		return forums;
		
		
		Session session = sessionFactory.openSession();
		@SuppressWarnings("unchecked")
		List<Forum> flist = session.createQuery("from Forum").list();
		session.close();
		return flist;
	}
	@Transactional
	public Forum getForumbyId(int forumid) {
		Session session = sessionFactory.openSession();
		Forum f = (Forum) session.load(Forum.class, forumid);
		return f;
		//return null;
	}


}
