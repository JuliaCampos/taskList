package com.taskList.repository;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class Conexao {

	private static EntityManagerFactory emf;

	public static EntityManagerFactory getConexao() {
		if(emf == null || !emf.isOpen()) {
			emf = Persistence.createEntityManagerFactory("tarefa");
		}
		
		return emf;
	}
	
	public static void closeConexao() {
		if(emf.isOpen()) {
			emf.close();
		}
	}
}