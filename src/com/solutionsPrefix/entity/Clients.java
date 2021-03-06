package com.solutionsPrefix.entity;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="prefix_clients_tbl")
public class Clients {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="first_name")
	private String firstName;
	
	@Column(name="last_name")
	private String lastName;
	
	@Column(name="email")
	private String email;
	
	@Column(name="mobilenumber")
	private String mobileNumber;
	
	@Column(name="city")
	private String city;
	
	@Column(name="country")
	private String country;
	
	@Column(name="domain")
	private String domain;
	
	@Column(name="requirments")
	private String requirments;
	
	@Column(name="startdate")
	private Date projectBeginingDate;
	
	@Column(name="enddate")
	private Date projectEndDate;

	public int getId() {
		return id;
	}

	public String getFirstName() {
		return firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public String getEmail() {
		return email;
	}

	public String getMobileNumber() {
		return mobileNumber;
	}

	public String getCity() {
		return city;
	}

	public String getCountry() {
		return country;
	}

	public String getDomain() {
		return domain;
	}

	public String getRequirments() {
		return requirments;
	}

	public Date getProjectBeginingDate() {
		return projectBeginingDate;
	}

	public Date getProjectEndDate() {
		return projectEndDate;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public void setDomain(String domain) {
		this.domain = domain;
	}

	public void setRequirments(String requirments) {
		this.requirments = requirments;
	}

	public void setProjectBeginingDate(Date projectBeginingDate) {
		this.projectBeginingDate = projectBeginingDate;
	}

	public void setProjectEndDate(Date projectEndDate) {
		this.projectEndDate = projectEndDate;
	}

	@Override
	public String toString() {
		return "Clients [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", email=" + email
				+ ", mobileNumber=" + mobileNumber + ", city=" + city + ", country=" + country + ", domain=" + domain
				+ ", requirments=" + requirments + ", projectBeginingDate=" + projectBeginingDate + ", projectEndDate="
				+ projectEndDate + "]";
	}
}
