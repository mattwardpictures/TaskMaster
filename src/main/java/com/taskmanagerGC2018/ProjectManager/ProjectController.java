package com.taskmanagerGC2018.ProjectManager;

import java.sql.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.taskmanagerGC2018.ProjectManager.entity.Task;
import com.taskmanagerGC2018.ProjectManager.entity.User;
import com.taskmanagerGC2018.ProjectManager.repo.TaskRepository;
import com.taskmanagerGC2018.ProjectManager.repo.UserRepository;

@Controller
public class ProjectController {

	@Autowired
	TaskRepository tR;

	@Autowired
	UserRepository uR;

	@RequestMapping("/")
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("index");
		return mv;
	}

	@RequestMapping("/login")
	public ModelAndView loginUser(@RequestParam("useremail") String useremail,
			@RequestParam("password") String password) {
		User u = new User(useremail, password);
		ModelAndView mv;
		if (uR.existsById(u.getUserid())) {
			mv = new ModelAndView("redirect:/addtaskform");
		} else {
			mv = new ModelAndView("redirect:/");
		}
		return mv;
	}

	@RequestMapping("/register")
	public ModelAndView register() {
		return new ModelAndView();
	}

	@RequestMapping("/adduser")
	public ModelAndView addNewUser(@RequestParam("username") String username,
			@RequestParam("useremail") String useremail, @RequestParam("password") String password) {
		User u = new User(username, useremail, password);
		uR.save(u);
		return new ModelAndView("redirect:/addtaskform");
	}

	@RequestMapping("/addtaskform")
	public ModelAndView addTaskForm() {
		ModelAndView mv = new ModelAndView("addtaskform", "listoftasks", tR.findAll());
		mv.addObject("tasks");
		return mv;
	}

	@RequestMapping("/addtask")
	public ModelAndView addNewTask(@RequestParam("taskdescription") String taskdescription,
			@RequestParam("taskdeadline") Date taskdeadline, @RequestParam("taskcomplete") String taskcomplete,
			@RequestParam("userid") Integer userid) {
		User users = uR.findById(userid).orElse(null);
		Task t = new Task(taskdescription, taskcomplete, taskdeadline, users);
		tR.save(t);
		return new ModelAndView("redirect:/addtaskform");
	}

}
