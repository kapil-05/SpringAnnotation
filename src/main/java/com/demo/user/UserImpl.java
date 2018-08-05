package com.demo.user;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class UserImpl implements UserDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	public void insert(User p) {
		this.sessionFactory.getCurrentSession().save(p);
		
	}

	public List<User> getAllUsers() {
		return (List<User>)this.sessionFactory.getCurrentSession().createQuery("from User").list();
	}

	public void update(User p) {
		this.sessionFactory.getCurrentSession().update(p);
		
	}

	public void delete(int id) {
		this.sessionFactory.getCurrentSession().createQuery("delete from User where id=:id").setInteger("id", id).executeUpdate();
		
	}

	public User getUser(int id) {
		return (User)this.sessionFactory.getCurrentSession().createQuery("from User where id=:id").setInteger("id", id).list().get(0);
	}

}
