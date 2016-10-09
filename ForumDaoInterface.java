package DAO;

import java.util.*;


import model.Forum;
	
public interface ForumDaoInterface
{
	public void createNewForum(Forum f);
	public List<Forum> getForumList(String UserName);
	public void delete(int fid);
	public List<Forum> getForum();
	public Forum getForumbyId(int forumid);
}
