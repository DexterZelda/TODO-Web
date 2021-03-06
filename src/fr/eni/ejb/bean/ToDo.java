package fr.eni.ejb.bean;

import java.io.Serializable;

@SuppressWarnings("serial")
public class ToDo implements Serializable {
	// Les attributs
	private int id, idUser;
	private String libelle;

	// Contructeurs
	public ToDo() {
	}

	public ToDo(int id, String libelle, int idUser) {
		this.id = id;
		this.libelle = libelle;
		this.idUser = idUser;
	}

	// Getters et Setters
	public int getId() {
		return id;
	}

	public int getIdUser() {
		return idUser;
	}

	public String getLibelle() {
		return libelle;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}

	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}
}
