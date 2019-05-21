package com.solutionsPrefix.service;

import java.util.List;

import com.solutionsPrefix.entity.Clients;

public interface ClientService {

	public List<Clients> getClients();

	public void saveClient(Clients theClients);
	
}
