package com.taskList.domain;

import java.util.Date;
import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tarefa")
public class Task {
	
    @Id
    private  Long id;
    
    @Column(nullable = false)
    private String titulo;
    
    @Column(nullable = false)
    private String descricao;
    
    @Column(nullable = false)
    private String responsavel;

    @Column(nullable = false)
    private String prioridade;
    
    @Column(nullable = false, updatable = false)
    private Date deadline;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getResponsavel() {
		return responsavel;
	}

	public void setResponsavel(String responsavel) {
		this.responsavel = responsavel;
	}

	public String getPrioridade() {
		return prioridade;
	}

	public void setPrioridade(String prioridade) {
		this.prioridade = prioridade;
	}

	public Date getDeadline() {
		return deadline;
	}

	public void setDeadline(Date deadline) {
		this.deadline = deadline;
	}

	@Override
	public int hashCode() {
		return Objects.hash(deadline, descricao, id, prioridade, responsavel, titulo);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Task other = (Task) obj;
		return Objects.equals(deadline, other.deadline) && Objects.equals(descricao, other.descricao)
				&& Objects.equals(id, other.id) && Objects.equals(prioridade, other.prioridade)
				&& Objects.equals(responsavel, other.responsavel) && Objects.equals(titulo, other.titulo);
	}
}
