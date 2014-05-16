package com.srp.model;

import java.util.Date;

public class ResourceModel {
	String platform;
	String type, subType, numSamples, description, frequency, dateFirst, dateComplete, dateRelease;
	
	public ResourceModel(String type, String subType, String platform, String numSamples, String description, String dateFirst, String dateComplete, String frequency, String dateRelease) {
		
		this.type = type;
		this.subType = subType;
		this.platform = platform;
		this.numSamples = numSamples;
		this.description = description;
		this.dateComplete = dateComplete;
		this.dateFirst = dateFirst;
		this.dateRelease = dateRelease;
		this.frequency = frequency;
	}
}
