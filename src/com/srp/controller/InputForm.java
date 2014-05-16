/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.srp.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.srp.model.*;
/**
 *
 * @author 45W1N
 */
public class InputForm extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
    	String studyType = request.getParameter("study-type");
        String studyTitle = request.getParameter("study-title");
        String studyDescription = request.getParameter("study-description");
        String shortName = request.getParameter("short-name");
        String grantNumber = request.getParameter("grant-number");
        String awardStartDate = request.getParameter("award-start-date");
        String projectEndDate = request.getParameter("project-end-date");
        String dbgapStudyRegistered = request.getParameter("dbgap-study-registered");
        String dbgapStudyID = request.getParameter("dbgap-study-id");
        String dbgapStudyTitle = request.getParameter("dbgap-study-title");
        String washuStudyNum = request.getParameter("washu-study-num");
        String numOfSites = request.getParameter("num-of-sites");
        
        String eraid = request.getParameter("investigator-era-id");
        String firstName = request.getParameter("first-name-1");
        String middleName = request.getParameter("middle-name-1");
        String lastName = request.getParameter("last-name-1");
        String title = request.getParameter("title-1");
        String email = request.getParameter("email-1");
        String phone = request.getParameter("phone-1");
        String fax = request.getParameter("fax-1");
        
        String orgID = request.getParameter("investigator-organization-era-id/1-1");
        String oname = request.getParameter("investigator-organization-name/1-1");
        String role = request.getParameter("role-1");
        String sub1 = request.getParameter("investigator-subunitone/1-1");
        String sub2 = request.getParameter("investigator-subunittwo/1-1");
        String add = request.getParameter("investigator-street-address/1-1");
        String city = request.getParameter("investigator-city/1-1");
        String state = request.getParameter("investigator-state/1-1");
        String country = request.getParameter("investigator-country/1-1");
        int zip = 0;
        
        String contact = request.getParameter("resource-organization-site-contact/1-1");
        String type = request.getParameter("resource-type-1");
        String subType = request.getParameter("resource-subtype-1");
        String platform = request.getParameter("platform-1");
        String description = request.getParameter("resource-description-1");
        String numSamples = request.getParameter("num-samples-1");
        String dateFirst = request.getParameter("date-first-submission-1");
        String frequency = request.getParameter("frequency-submission-1");
        String dateRelease = request.getParameter("date-release-1");
        String dateComplete = request.getParameter("project-end-date-1");
        
        
        
        StudyModel newStudy = new StudyModel(studyTitle, studyDescription, shortName, grantNumber, awardStartDate, projectEndDate, studyType, dbgapStudyRegistered, dbgapStudyID, dbgapStudyTitle, washuStudyNum, numOfSites);
        InvestigatorModel newInvestigator = new InvestigatorModel(eraid,firstName,middleName,lastName,title,email,phone,fax);
        OrganizationModel newOrganization = new OrganizationModel(orgID, oname, sub1, sub2, add, city, state, zip, country);
        ResourceModel newResource = new ResourceModel(type, subType, platform, numSamples, description, dateFirst, dateComplete, frequency, dateRelease);
        
        
        DatabaseConnection Studydb = new DatabaseConnection();
        //String result = Studydb.StoreStudy(studyTitle, studyDescription, shortName, grantNumber, awardStartDate, projectEndDate, dbgapStudyRegistered, dbgapStudyID, dbgapStudyTitle, washuStudyNum, numOfSites);
        int studyResult = Studydb.StoreStudy(newStudy);
        int investigatorResult = Studydb.StoreInvestigator(newInvestigator);
        int organizationResult = Studydb.StoreOrganization(newOrganization);
        int resourceResult = Studydb.StoreResource(studyResult, newResource);
        int studyInvResult = Studydb.ConnectStudyInvestigator(studyResult, investigatorResult, role);
        int invOrgResult = Studydb.ConnectInvestigatorOrganization(investigatorResult, organizationResult);
        
        // TODO: find the exact contactID
        //contact is the index of the selection. 1 for first investigator.	contactID = investigatorResult;
        int contactID = investigatorResult;
        int resSrcResult = Studydb.ConnectResourceSite(studyResult, resourceResult, organizationResult, contactID);
        
        request.getRequestDispatcher("/Review?studyID="+studyResult).forward(request, response);
        
        }
        catch (Exception e) {
        	System.out.println(e);
        }
        
        
        
        		
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Database Operation Summary</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Data from InputForm at " + request.getContextPath() + "</h1>");
            //out.println("<p>Study Title : "+studyTitle+"<br>Study Description : "+studyDescription+"<br>Short Name : "+shortName+"<br>Grant Number : "+grantNumber+"<br>Award Start Date : "+awardStartDate+"<br>Project End Date : "+projectEndDate+"<br>");
            //out.println("First Name : "+firstName+"<br>Middle Name : "+middleName+"<br>Last Name : "+lastName+"</p>");
            //out.println("<h2>Database Inserted IDs : " + studyResult+", "+investigatorResult+ ", "+organizationResult+ " AND "+resourceResult +"</h2>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
