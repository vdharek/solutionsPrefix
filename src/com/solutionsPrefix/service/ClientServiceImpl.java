package com.solutionsPrefix.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.*;
import org.springframework.transaction.annotation.Transactional;

import com.solutionsPrefix.DAO.ClientsDAO;
import com.solutionsPrefix.entity.Clients;

@Service
public class ClientServiceImpl implements ClientService {

	// Inject ClientDAO
	@Autowired
	public ClientsDAO clientDAO;
	
	@Override
	@Transactional
	public List<Clients> getClients() {
		
		return clientDAO.getClients();
	}

	@Override
	@Transactional
	public void saveClient(Clients theClients) {
		
		clientDAO.saveClient(theClients);
		
	}

	@Override
	@Transactional
	public Clients getClient(int theId) {
		
		return clientDAO.getClient(theId);
	}

}
