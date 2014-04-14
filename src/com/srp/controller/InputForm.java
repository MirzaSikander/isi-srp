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
        
                                
        String firstName = request.getParameter("first-name-1");
        String middleName = request.getParameter("middle-name-1");
        String lastName = request.getParameter("last-name-1");
        
        StudyModel study = new StudyModel(studyTitle, studyDescription, shortName, grantNumber, awardStartDate, projectEndDate);
        DatabaseConnection Studydb = new DatabaseConnection();
        String result = Studydb.StoreStudy(studyTitle, studyDescription, shortName, grantNumber, awardStartDate, projectEndDate, dbgapStudyRegistered, dbgapStudyID, dbgapStudyTitle, washuStudyNum, numOfSites);
        String result2 = Studydb.StoreInvestigator(firstName, middleName, lastName);
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Database Operation Summary</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Data from InputForm at " + request.getContextPath() + "</h1>");
            out.println("<p>Study Title : "+studyTitle+"<br>Study Description : "+studyDescription+"<br>Short Name : "+shortName+"<br>Grant Number : "+grantNumber+"<br>Award Start Date : "+awardStartDate+"<br>Project End Date : "+projectEndDate+"<br>");
            out.println("First Name : "+firstName+"<br>Middle Name : "+middleName+"<br>Last Name : "+lastName+"</p>");
            out.println("<h2>Database Result : " + result+" AND "+result2+ "</h2>");
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
