package fr.eni.ejb.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fr.eni.ejb.bean.ToDo;
import fr.eni.ejb.bean.Utilisateur;
import fr.eni.ejb.dal.UtilisateurDAL;

import fr.eni.ejb.ejb.EjbCnx;

@WebServlet("/cnx")
public class Connexion extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ArrayList<Utilisateur> listeUsers = new ArrayList<>();
		ArrayList<ToDo> listeToDo = new ArrayList<>();
		HttpSession session = request.getSession();
		session.setAttribute("nom", request.getParameter("nom"));
		session.setAttribute("mdp", request.getParameter("mdp"));
		try {
			listeUsers = UtilisateurDAL.getUsers();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		for (Utilisateur user : listeUsers) {
			boolean verif = EjbCnx.verifCnx(request, user);
			if (verif) {
				listeToDo = user.getToDo();
				session.setAttribute("id", user.getId());
				session.setAttribute("toDo", listeToDo);
				RequestDispatcher rd = request.getRequestDispatcher("/toDo.jsp");
				rd.forward(request, response);
				return;
			}
		}
		getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
