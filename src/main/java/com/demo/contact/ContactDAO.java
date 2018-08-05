package com.demo.contact;

import java.util.List;


public interface ContactDAO {
	
	void insert(Contact c);
	List<Contact> getAllContact();
	void update(Contact c);
	void delete(int id);
	Contact getContact(int id);

}
