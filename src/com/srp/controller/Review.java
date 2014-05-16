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
import org.json.simple.JSONObject;

import com.srp.model.*;
/**
 *
 * @author 45W1N
 */
public class Review extends HttpServlet {

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
    	
    	String studyID= request.getParameter("studyID");
    	System.out.println(studyID);
    	
    	JSONObject jason = new JSONObject();
    	JSONObject jStudy = new JSONObject();
    	
    	jStudy.put("db_sid",studyID);
    	jason.put("study-section", jStudy);
    	
    	/*
		"study-section" : {
			"study-type" : "Clinical Trials",
			"study-title" : "some study",
			"short-name" : "stu",
			"grant-number" : "1234",
			"award-start-date" : "05/13/2014",
			"project-end-date" : "06/14/2014",
			"dbgap-study-registered-yes" : "true",
			"dbgap-study-id" : "234",
			"dbgap-study-title" : "blah blah",
			"washu-study-num" : "3456",
			"num-of-sites" : "2"
		}
    	*/
    	
    	System.out.println(jason);
        response.setContentType("text/html;charset=UTF-8");
        request.getRequestDispatcher("/jsonTest.jsp").forward(request, response);
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
