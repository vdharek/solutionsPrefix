package com.solutionsPrefix.DAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.solutionsPrefix.entity.User;

@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public User findByUserName(String userName) {
		
		Session currentSession = sessionFactory.getCurrentSession();
		
		Query<User> theQuery = currentSession.createQuery("from User where userName=:uName", User.class);
		
		theQuery.setParameter("uName", userName);
		User theUser =  null;
		
		try {
			theUser = theQuery.getSingleResult();
		} catch(Exception ex){
			theUser = null;
		}
		
		return theUser;
	}

	@Override
	public void save(User user) {
		
		Session currentSession = sessionFactory.getCurrentSession();
		
		currentSession.saveOrUpdate(user);

	}
}
