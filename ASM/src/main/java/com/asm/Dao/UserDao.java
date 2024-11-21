package com.asm.Dao;

import java.util.List;

import com.asm.Entity.User;



public interface UserDao {
	List<User>findAll();
	User findById(String id);
	User FinduserbyIdOrEmail(String id ,String email);
	int create(User item);
	void update(User item);
	void deleteById(String id);
	
	String NewID();
}
