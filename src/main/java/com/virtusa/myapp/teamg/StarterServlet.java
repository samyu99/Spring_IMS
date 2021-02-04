package com.virtusa.myapp.teamg;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;


@WebServlet("/hello")
public class StarterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private static final Logger LOGGER = LogManager.getLogger();
    
    public StarterServlet() {
    	// Do nothing
    }

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				try{response.getWriter().append("Served at=> ").append(request.getContextPath());}
				catch(Exception ex){
					LOGGER.warn(ex.getMessage());
				}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{doGet(request, response);}
		catch(Exception ex){
			LOGGER.warn(ex.getMessage());
		}
	}

}
