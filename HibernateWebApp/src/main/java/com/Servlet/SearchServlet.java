package com.Servlet;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.Entity.Employee;
import com.Provider.FactoryProvider;

/**
 * Servlet implementation class SearchServlet
 */
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int eid = Integer.parseInt(request.getParameter("eid"));
		SessionFactory sf=FactoryProvider.getFactory();
		Session session=sf.openSession();
		Employee emp=session.get(Employee.class, eid);
		if(emp!=null) {
			ServletContext context = getServletContext();
			context.setAttribute("emp", emp);
		}else {
			ServletContext context=getServletContext();
			context.setAttribute("emp", null);
		}
		session.close();
		response.sendRedirect("search.jsp");
	}
}
