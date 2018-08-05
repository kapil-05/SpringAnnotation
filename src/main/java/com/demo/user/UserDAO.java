package com.demo.user;

import java.util.List;

public interface UserDAO {

	void insert(User p);
	List<User> getAllUsers();
	void update(User p);
	void delete(int id);
	User getUser(int id);
}
