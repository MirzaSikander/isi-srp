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
public class StudyModel {
    String studyTitle, studyDescription, shortName, grantNumber, awardStartDate, projectEndDate;

    public StudyModel(String a, String b, String c, String d, String e, String f) {
        this.studyTitle = a;
        this.studyDescription = b;
        this.shortName = c;
        this.grantNumber = d;
        this.awardStartDate = e;
        this.projectEndDate = f;
    }
}
