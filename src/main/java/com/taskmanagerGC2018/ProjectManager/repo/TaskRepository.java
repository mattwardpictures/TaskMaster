package com.taskmanagerGC2018.ProjectManager.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.taskmanagerGC2018.ProjectManager.entity.Task;

public interface TaskRepository extends JpaRepository<Task, Integer> {

}
