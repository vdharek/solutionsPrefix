package com.solutionsPrefix.DAO;

import java.util.List;

import com.solutionsPrefix.entity.Clients;

public interface ClientsDAO {

	public List<Clients> getClients();

	public void saveClient(Clients theClients);

	public Clients getClient(int theId);

	public void deleteClient(int theId);
	
}
