/**
 * Contribui para o isolamento da camada de acesso aos dados
 * 
 */
package com.taskList.repository;


import org.springframework.stereotype.Repository;
import com.taskList.domain.Task;
import org.springframework.data.jpa.repository.JpaRepository;

@Repository
public interface TaskRepository extends JpaRepository<Task, Long>{
	
}
