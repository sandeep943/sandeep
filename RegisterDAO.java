package DAO;

import java.util.List;

import model.Register;;

public interface RegisterDAO {
	
	public List<Register> list();

	public Register get(String id);

	public void saveOrUpdate(Register register);

	public void delete(String id);
	public boolean isValidUser(String userid, String password);
}
