package com.solutionsPrefix.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.solutionsPrefix.entity.Clients;

@Repository
public class ClientsDAOImpl implements ClientsDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Clients> getClients() {
		
		// Get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// create query
		Query<Clients> theQuery = 
				currentSession.createQuery("from Clients", Clients.class);
		
		// execute query and get result list
		List<Clients> clients = theQuery.getResultList();
		// return results
		
		return clients;
	}

	@Override
	public void saveClient(Clients theClients) {
		// get current hibernate session	
		Session currentSession = sessionFactory.getCurrentSession();
		
		// save the clients
		currentSession.save(theClients);
		
	}

	@Override
	public Clients getClient(int theId) {
		
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// now retrive/read from database using the primary key
		Clients theClient = currentSession.get(Clients.class, theId);
		
		return theClient;
	}
}
