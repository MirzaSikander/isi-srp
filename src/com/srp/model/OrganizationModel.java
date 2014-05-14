package com.srp.model;

public class OrganizationModel {
	String organizationEraID, name, subUnit1, subUnit2, streetAddress, city, state, country;
	int zipcode;
	public OrganizationModel(String orgID, String name, String sub1, String sub2, String add, String city, String state, int zip, String country){
		this.organizationEraID = orgID;
		this.name = name;
		this.subUnit1 = sub1;
		this.subUnit2 = sub2;
		this.streetAddress = add;
		this.city = city;
		this.state = state;
		this.zipcode = zip;
		this.country = country;
	}

}
