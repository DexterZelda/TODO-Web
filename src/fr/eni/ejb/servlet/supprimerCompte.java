package fr.eni.ejb.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fr.eni.ejb.dal.UtilisateurDAL;

/**
 * Servlet implementation class supprimerCompte
 */
@WebServlet("/supprimerCompte")
public class supprimerCompte extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		try {
			UtilisateurDAL.delAllToDo((int) session.getAttribute("id"));
			UtilisateurDAL.delUser((int) session.getAttribute("id"));
			if (session != null) {
				// supprime les sessions actives
				session.invalidate();
			}
			// Suppression du cache -----------------------------------------------
			// https://developer.mozilla.org/fr/docs/Web/HTTP/Headers/Cache-Control
			response.addHeader("Cache-Control", "no-cache");
			// Renvoi vers la page d'accueil
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/");
			rd.forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
