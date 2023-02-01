package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import NoteTaker_entity.Note;
import SessionTaker.FactoryTaker;


public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public DeleteServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	try {
		int NoteId = Integer.parseInt(request.getParameter("note_id").trim());
		Session session = FactoryTaker.getFactory().openSession();
		Transaction txTransaction = session.beginTransaction();
		Note note=(Note)session.get(Note.class, NoteId);
		
		session.delete(note);
		txTransaction.commit();
		session.close();
		response.sendRedirect("Show_Notes.jsp");
	} catch (Exception e) {
		// TODO: handle exception
	}
	
	
	
	
	}
}
