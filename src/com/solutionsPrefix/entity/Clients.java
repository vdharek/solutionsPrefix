package com.solutionsPrefix.entity;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="prefix_clients_tbl")
public class Clients {

	private int id;
	private String firstName;
	private String lastName;
	private String email;
	private int mobileNumber;
	private String city;
	private String country;
	private enum domain{WebDevelopment, 
						SoftwareDevelopment, 
						ApplicationDevelopment}
	private long requirments;
	//private Java.sql.date startDate;
	
	
}
