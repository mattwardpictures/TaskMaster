package com.taskmanagerGC2018.ProjectManager.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "users")
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer userid;
	private String username, useremail, password;

	@OneToMany(mappedBy = "users")
	private List<Task> tasks = new ArrayList<>();

	public User() {

	}

	public User(Integer userid, String username, String useremail, String password, List<Task> tasks) {
		super();
		this.userid = userid;
		this.username = username;
		this.useremail = useremail;
		this.password = password;
		this.tasks = tasks;
	}

	// Constructor for User registration.
	public User(String username, String useremail, String password) {
		this.username = username;
		this.useremail = useremail;
		this.password = password;
	}

	// Constructor for returning users to login.
	public User(String useremail, String password) {
		this.useremail = useremail;
		this.password = password;
	}

	public Integer getUserid() {
		return userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUseremail() {
		return useremail;
	}

	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public List<Task> getTasks() {
		return tasks;
	}

	public void setTasks(List<Task> tasks) {
		this.tasks = tasks;
	}

	@Override
	public String toString() {
		return "<p>" + userid + " " + username + " " + useremail + " " + password + "</p>";
	}

}
