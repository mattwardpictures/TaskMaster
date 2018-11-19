package com.taskmanagerGC2018.ProjectManager.entity;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "tasks")
public class Task {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer taskid;
	private String taskdescription, taskcomplete;
	private Date taskdeadline;

	@ManyToOne
	@JoinColumn(name = "userid")
	private User users;

	public Task() {

	}

	public Task(Integer taskid, String taskdescription, String taskcomplete, Date taskdeadline, User users) {
		super();
		this.taskid = taskid;
		this.taskdescription = taskdescription;
		this.taskcomplete = taskcomplete;
		this.taskdeadline = taskdeadline;
		this.users = users;
	}

	public Task(String taskdescription, String taskcomplete, Date taskdeadline, User users) {
		this.taskdescription = taskdescription;
		this.taskcomplete = taskcomplete;
		this.taskdeadline = taskdeadline;
		this.users = users;
	}

	// Constructor for addNewTask
	public Task(String taskdescription, Date taskdeadline, User users) {
		this.taskdescription = taskdescription;
		this.taskdeadline = taskdeadline;
		this.users = users;
	}

	public Integer getTaskid() {
		return taskid;
	}

	public void setTaskid(Integer taskid) {
		this.taskid = taskid;
	}

	public String getTaskdescription() {
		return taskdescription;
	}

	public void setTaskdescription(String taskdescription) {
		this.taskdescription = taskdescription;
	}

	public String getTaskcomplete() {
		return taskcomplete;
	}

	public void setTaskcomplete(String taskcomplete) {
		this.taskcomplete = taskcomplete;
	}

	public Date getTaskdeadline() {
		return taskdeadline;
	}

	public void setTaskdeadline(Date taskdeadline) {
		this.taskdeadline = taskdeadline;
	}

	public User getUsers() {
		return users;
	}

	public void setUsers(User users) {
		this.users = users;
	}

	@Override
	public String toString() {
		return "<p>" + taskid + " " + taskdescription + " " + taskcomplete + " " + taskdeadline + " " + users + "</p>";
	}

}
