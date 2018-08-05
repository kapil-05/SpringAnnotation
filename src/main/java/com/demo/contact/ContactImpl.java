package com.demo.contact;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


@Repository
@Transactional
public class ContactImpl implements ContactDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	public void insert(Contact c) {
		this.sessionFactory.getCurrentSession().save(c);
		
	}

	public List<Contact> getAllContact() {
		return (List<Contact>)this.sessionFactory.getCurrentSession().createQuery("from Contact").list();
	}

	public void update(Contact c) {
		this.sessionFactory.getCurrentSession().update(c);
		
	}

	public void delete(int id) {
		this.sessionFactory.getCurrentSession().createQuery("delete from Contact where id=:id").setInteger("id", id).executeUpdate();
		
	}

	public Contact getContact(int id) {
		return (Contact)this.sessionFactory.getCurrentSession().createQuery("from Contact where id=:id").setInteger("id", id).list().get(0);
	}

}
