/**
 * liga a parte web com a parte java
 */

package com.taskList.controler;

import java.util.Date;
import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.taskList.domain.Task;
import com.taskList.service.TaskService;

@RestController
@RequestMapping("/api/v1")
public class TaskControler {
	
	private String titulo;
	private String descricao;
	private String responsavel;
	private String prioridade;
	private Date deadline;
	
	TaskService taskService;

    public Task createTask(Task task) {
        return taskService.createTask(task);
    }


    public List<Task> getAllTasks() {
        return taskService.listAllTasks();
    }


    public ResponseEntity<Task> getTaskById(Long id) {
        return taskService.findTaskById(id);
    }


    public ResponseEntity<Task> updateTaskById(Long id, Task task) {
        return taskService.updateTaskById(task,id);
    }


    public ResponseEntity<Object> deleteTaskById(Long id) {
        return taskService.deleteById(id);
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
	
	public TaskService getTaskService() {
		return taskService;
	}

	public void setTaskService(TaskService taskService) {
		this.taskService = taskService;
	}
}
