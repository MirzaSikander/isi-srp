/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.srp.model;
import java.io.*;
import java.sql.*;

/**
 *
 * @author 45W1N
 */
public class DatabaseConnection {
    public int StoreStudy(StudyModel newStudy) {
    	int ret = -1;
        try(Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root","");
                Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY ))  {
            //String insert = "INSERT INTO Study (study_id,intial_entry_date,short_name,title,grant_number,description,study_type)";
            //INSERT INTO `mydb`.`study` (`study_id`, `intial_entry_date`, `short_name`, `title`, `grant_number`, `description`, `study_type`, `award_start_date`, `project_end_date`, `dbgap_study_id`, `dbgap_study_registered`, `dbgap_study_title`, `washu_study_num`, `num_sites`) VALUES ('546', '2014-04-08', 'hgfhf', 'jhgj', '4354', 'gjhgjhg', 'fjfjfgf', '2014-04-08', '2014-04-08', '543', 'true', 'hdhgfhgf', '54654', '5');
            String insert = "INSERT INTO Study (`short_name`, `title`, `grant_number`, `description`, `study_type`, `award_start_date`, `project_end_date`, `dbgap_study_id`, `dbgap_study_registered`, `dbgap_study_title`, `washu_study_num`, `num_sites`) ";
            //String insert = "INSERT INTO Study (`study_id`, `intial_entry_date`, `short_name`, `title`, `grant_number`, `description`) ";
            //String insert = "INSERT INTO Study";
            insert = insert+"VALUES(\""+newStudy.shortName+"\",\""+newStudy.studyTitle+"\",\""+newStudy.grantNumber+"\",\""+newStudy.studyDescription+"\",";
            insert = insert+"\""+newStudy.studyType+"\",STR_TO_DATE('"+newStudy.awardStartDate+"','%m/%d/%Y'),STR_TO_DATE('"+newStudy.projectEndDate+"','%m/%d/%Y'),";
            insert = insert+"\""+newStudy.dbgapStudyID+"\", \""+newStudy.dbgapStudyRegistered+"\", \""+newStudy.dbgapStudyTitle+"\", \""+newStudy.washuStudyNum+"\", \""+newStudy.numOfSites+"\" );";
            System.out.println(insert);
            ret = stmt.executeUpdate(insert);
            ResultSet rs = stmt.executeQuery("SELECT `study_id` FROM `study` WHERE 1 ORDER BY `study_id` DESC LIMIT 1;");
            rs.next();
            System.out.println(rs.getInt("study_id"));
            return rs.getInt("study_id");
        } catch (SQLException e) {
            e.printStackTrace();
            return ret;
        }
    }
    
    public int StoreInvestigator(InvestigatorModel newInvestigator) {
    	int ret = -1;
        try(Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root","");
                Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY ))  {
            //String insert = "INSERT INTO Investigator (investigator_era_id,first_name,middle_name,last_name) VALUES(\""+rand()+"\", \""+firstName+"\",\""+middleName+"\",\""+lastName+"\");";
        	String insert = "INSERT INTO Investigator (investigator_era_id,first_name,middle_name,last_name,title,email,phone,fax,organization_id) VALUES(\""+
            newInvestigator.investigatorEraID+"\", \""+newInvestigator.firstName+"\",\""+newInvestigator.middleName+"\",\""+newInvestigator.lastName+"\","+
        			"\""+newInvestigator.title+"\", \""+newInvestigator.email+"\", \""+newInvestigator.phone+"\", \""+newInvestigator.fax+"\", \""+
        			newInvestigator.organizationID+"\"  );";
                    System.out.println(insert);
                   ret = stmt.executeUpdate(insert);
                   ResultSet rs = stmt.executeQuery("SELECT `Investigator_id` FROM `investigator` WHERE 1 ORDER BY `Investigator_id` DESC LIMIT 1;");
                   rs.next();
                   System.out.println(rs.getInt("investigator_id"));
            return rs.getInt("investigator_id");
        } catch (SQLException e) {
            e.printStackTrace();
            return ret;
        }
    }
    
    public int StoreOrganization(OrganizationModel newOrganization) {
    	int ret = -1;
        try(Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root","");
                Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY ))  {
            //String insert = "INSERT INTO Investigator (investigator_era_id,first_name,middle_name,last_name) VALUES(\""+rand()+"\", \""+firstName+"\",\""+middleName+"\",\""+lastName+"\");";
        	String insert = "INSERT INTO Organization (organization_era_id,name,subunit1,subunit2,street_address,city,state,zipcode,country) VALUES(\""+
            newOrganization.organizationEraID+"\", \""+newOrganization.name+"\",\""+newOrganization.subUnit1+"\",\""+newOrganization.subUnit2+"\","+
        			"\""+newOrganization.streetAddress+"\", \""+newOrganization.city+"\", \""+newOrganization.state+"\", "+newOrganization.zipcode+", \""+
        			newOrganization.country+"\"  );";
                    System.out.println(insert);
                   ret = stmt.executeUpdate(insert);
                   ResultSet rs = stmt.executeQuery("SELECT `organization_id` FROM `organization` WHERE 1 ORDER BY `organization_id` DESC LIMIT 1;");
                   rs.next();
                   System.out.println(rs.getInt("organization_id"));
            return rs.getInt("organization_id");
        } catch (SQLException e) {
            e.printStackTrace();
            return ret;
        }
    }
    
    public int StoreResource(int studyID, ResourceModel newResource) {
    	int ret = -1;
        try(Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root","");
                Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY ))  {
            //String insert = "INSERT INTO Investigator (investigator_era_id,first_name,middle_name,last_name) VALUES(\""+rand()+"\", \""+firstName+"\",\""+middleName+"\",\""+lastName+"\");";
        	String insert = "INSERT INTO Resource (study_id,type,subtype,platform,num_samples,description,date_first_submission,date_submission_completed,frequency_submission, date_release) VALUES("+
            studyID+", \""+newResource.type+"\", \""+newResource.subType+"\","+newResource.platform+",\""+newResource.numSamples+"\","+
        			"\""+newResource.description+"\", STR_TO_DATE('"+newResource.dateFirst+"','%m/%d/%Y'), STR_TO_DATE('"+newResource.dateComplete+"','%m/%d/%Y'), "+
            newResource.frequency+", STR_TO_DATE('"+newResource.dateRelease+"','%m/%d/%Y') );";
                    System.out.println(insert);
                   ret = stmt.executeUpdate(insert);
                   ResultSet rs = stmt.executeQuery("SELECT `resource_id` FROM `resource` WHERE 1 ORDER BY `resource_id` DESC LIMIT 1;");
                   rs.next();
                   System.out.println(rs.getInt("resource_id"));
            return rs.getInt("resource_id");
        } catch (SQLException e) {
            e.printStackTrace();
            return ret;
        }
    }

    
    public DatabaseConnection() {
    	try {
    	    System.out.println("Loading driver...");
    	    Class.forName("com.mysql.jdbc.Driver");
    	    System.out.println("Driver loaded!");
    	} catch (ClassNotFoundException e) {
    	    throw new RuntimeException("Cannot find the driver in the classpath!", e);
    	}
    }
    
    public int rand() {
        int i = (int) (Math.random()*1000*Math.random());
        return i;
    }
}
