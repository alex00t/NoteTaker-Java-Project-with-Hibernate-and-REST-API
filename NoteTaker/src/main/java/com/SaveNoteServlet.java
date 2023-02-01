package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import NoteTaker_entity.Note;
import SessionTaker.FactoryTaker;


public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SaveNoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			String title =request.getParameter("title");
			String content = request.getParameter("content_text");
			Note ntNote = new Note(title,content, new Date());
			
			//System.out.println(ntNote.getId()+" : "+ntNote.getTitle());
			
			
			Session session = FactoryTaker.getFactory().openSession();
			Transaction tx= session.beginTransaction();
			session.save(ntNote);
			tx.commit();
			session.close();
			//response.setContentType("text/html");
			//PrintWriter outPrintWriter= response.getWriter();
			//response.sendRedirect("Show_Notes.jsp");
			//outPrintWriter.println("<h1 style='text-align:center;'>adding Susess...</h1>");
			//outPrintWriter.println("<h1 style='text-align:center;'><a href='Show_Notes.jsp'> Show All Note   </a></h1>");
			
			response.sendRedirect("look.jsp");
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
