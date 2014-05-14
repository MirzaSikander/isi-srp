/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.srp.model;

import java.util.Date;

/**
 *
 * @author 45W1N
 */
public class StudyModel {
	String initialEntryDate, awardStartDate, projectEndDate;
    String studyTitle, studyDescription, shortName, grantNumber;
	String studyType, dbgapStudyID, dbgapStudyRegistered, dbgapStudyTitle,washuStudyNum, numOfSites;

    public StudyModel(String a, String b, String c, String d, String e, String f, String studyType, String dbgapStudyRegistered,
    		String dbgapStudyID, String dbgapStudyTitle, String washuStudyNum, String numOfSites) {
        this.studyTitle = a;
        this.studyDescription = b;
        this.shortName = c;
        this.grantNumber = d;
        this.awardStartDate = e;
        this.projectEndDate = f;
        this.studyType = studyType;
        this.dbgapStudyRegistered = dbgapStudyRegistered;
        this.dbgapStudyID = dbgapStudyID;
        this.dbgapStudyTitle = dbgapStudyTitle;
        this.washuStudyNum = washuStudyNum;
        this.numOfSites = numOfSites;
    }
}
