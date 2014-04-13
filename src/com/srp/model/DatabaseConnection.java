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
    public String StoreStudy(String studyTitle, String studyDescription, String shortName, String grantNumber, String awardStartDate, String projectEndDate, String dbgapStudyRegistered, String dbgapStudyID, String dbgapStudyTitle, String washuStudyNum, String numOfSites) {
        try(Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root","");
                Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY ))  {
            //String insert = "INSERT INTO Study (study_id,intial_entry_date,short_name,title,grant_number,description,study_type)";
            //INSERT INTO `mydb`.`study` (`study_id`, `intial_entry_date`, `short_name`, `title`, `grant_number`, `description`, `study_type`, `award_start_date`, `project_end_date`, `dbgap_study_id`, `dbgap_study_registered`, `dbgap_study_title`, `washu_study_num`, `num_sites`) VALUES ('546', '2014-04-08', 'hgfhf', 'jhgj', '4354', 'gjhgjhg', 'fjfjfgf', '2014-04-08', '2014-04-08', '543', 'true', 'hdhgfhgf', '54654', '5');
            String insert = "INSERT INTO Study (`study_id`, `intial_entry_date`, `short_name`, `title`, `grant_number`, `description`, `study_type`, `award_start_date`, `project_end_date`, `dbgap_study_id`, `dbgap_study_registered`, `dbgap_study_title`, `washu_study_num`, `num_sites`) ";
            //String insert = "INSERT INTO Study (`study_id`, `intial_entry_date`, `short_name`, `title`, `grant_number`, `description`) ";
            //String insert = "INSERT INTO Study";
            insert = insert+"VALUES("+rand()+", STR_TO_DATE('"+awardStartDate+"','%m/%d/%Y'),\""+shortName+"\",\""+studyTitle+"\",\""+grantNumber+"\",\""+studyDescription+"\",";
            insert = insert+"\"GENERAL\",STR_TO_DATE('"+awardStartDate+"','%m/%d/%Y'),STR_TO_DATE('"+awardStartDate+"','%m/%d/%Y'),";
            insert = insert+"\""+dbgapStudyID+"\", \""+dbgapStudyRegistered+"\", \""+dbgapStudyTitle+"\", \""+washuStudyNum+"\", \""+numOfSites+"\" );";
            System.out.println(insert);
            stmt.executeUpdate(insert);
            return "SUCCESS";
        } catch (SQLException e) {
            e.printStackTrace();
            return "FAIL";
        }
    }
    
    public String StoreInvestigator(String firstName, String middleName, String lastName) {
        try(Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root","");
                Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY ))  {
            String insert = "INSERT INTO Investigator (investigator_era_id,first_name,middle_name,last_name) VALUES(\""+rand()+"\", \""+firstName+"\",\""+middleName+"\",\""+lastName+"\");";
                    System.out.println(insert);
                   stmt.executeUpdate(insert);
            return "SUCCESS";
        } catch (SQLException e) {
            e.printStackTrace();
            return "FAIL";
        }
    }
    
    public int rand() {
        int i = (int) (Math.random()*1000*Math.random());
        return i;
    }
}
