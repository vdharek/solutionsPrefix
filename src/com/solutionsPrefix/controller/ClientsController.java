package com.solutionsPrefix.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.solutionsPrefix.DAO.ClientsDAO;
import com.solutionsPrefix.entity.Clients;
import com.solutionsPrefix.service.ClientService;

@Controller
@RequestMapping("/clients")
public class ClientsController {

	// need to inject the customer dao
	@Autowired
	private ClientService clientsService;

	@GetMapping("/list")
	public String listClients(Model theModel) {

		// get customer from the dao
		List<Clients> theClients = clientsService.getClients();

		// add the customer to the model
		theModel.addAttribute("clientsModel", theClients);

		return "list-clients";
	}

	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model theModel) {

		// create model attribute for binding
		Clients theClient = new Clients();

		theModel.addAttribute("client", theClient);

		return "client-form";
	}

	@PostMapping("/saveClient")
	public String saveClient(@ModelAttribute("client") Clients theClients) {

		// Save the client
		clientsService.saveClient(theClients);

		return "list-clients";
	}

	@GetMapping("/viewOneClient")
	public String viewDetails(@RequestParam("clientId") int theId, Model theModel) {

		// get the client from the service
		Clients theClient = clientsService.getClient(theId);

		// set customer as a model attribute to pre-populate the form
		theModel.addAttribute("client", theClient);

		// send over to our form
		return "one-client";
	}

	@GetMapping("/formForUpdate")
	public String updateDetails(@RequestParam("clientId") int theId, Model theModel) {

		// get the client from the service
		Clients theClient = clientsService.getClient(theId);

		// set customer as a model attribute to pre-populate the form
		theModel.addAttribute("client", theClient);

		return "client-form";

	}
	
	@GetMapping("/delete")
	public String deleteClient(@RequestParam("clientId") int theId) {
		
		clientsService.deleteCustomer(theId);
		
		return "redirect:/clients/list";
	}

	// Drop-down list
	@ModelAttribute("domainList")
	public List<String> getCountryList() {

		List<String> domainList = new ArrayList<String>();

		domainList.add("Web-Development");
		domainList.add("Software Development");
		domainList.add("Application Development");

		return domainList;
	}

}
