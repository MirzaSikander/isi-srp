/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.srp.model;

/**
 *
 * @author 45W1N
 */
public class InvestigatorModel {
    String investigatorEraID, firstName, middleName, lastName, title, email, phone, fax, organizationID;
    public InvestigatorModel(String id, String fname, String mname, String lname, String title, String email, String phone, String fax, String orgID) {
    	this.investigatorEraID = id;
    	this.firstName = fname;
    	this.middleName = mname;
    	this.lastName = lname;
    	this.title = title;
    	this.email = email;
    	this.phone = phone;
    	this.fax = fax;
    	this.organizationID = orgID;
    }
}
