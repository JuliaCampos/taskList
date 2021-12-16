package com.taskList.service;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import com.taskList.domain.Task;
import com.taskList.repository.TaskRepository;

@Service
public class TaskService {

	private TaskRepository taskRepository;
	
    public Task createTask (Task task){
        return taskRepository.save(task);
    }
    
    public List<Task> listAllTasks(){
        return taskRepository.findAll();
    }

    public ResponseEntity<Task> findTaskById(Long id){
    	
        return  taskRepository.findById(id)
                .map(task -> ResponseEntity.ok().body(task))
                .orElse(ResponseEntity.notFound().build());
    }
    
    public ResponseEntity<Task> updateTaskById(Task task, Long id){
        return taskRepository.findById(id)
                .map(taskToUpdate ->{
                    taskToUpdate.setTitulo(task.getTitulo());
                    taskToUpdate.setDescricao(task.getDescricao());
                    taskToUpdate.setResponsavel(task.getResponsavel());
                    taskToUpdate.setPrioridade(task.getPrioridade());
                    taskToUpdate.setDeadline(task.getDeadline());
                    Task updated = taskRepository.save(taskToUpdate);
                    return ResponseEntity.ok().body(updated);
                }).orElse(ResponseEntity.notFound().build());
    }

    public ResponseEntity<Object> deleteById (Long id){
        return taskRepository.findById(id)
                .map(taskToDelete ->{
                    taskRepository.deleteById(id);
                    return ResponseEntity.noContent().build();
                }).orElse(ResponseEntity.notFound().build());

    }
    
    
	public TaskRepository getTaskRepository() {
		return taskRepository;
	}
	

	public void setTaskRepository(TaskRepository taskRepository) {
		this.taskRepository = taskRepository;
	}
	
}
