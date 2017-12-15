package com.cake.controller.manager;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cake.entity.manager.Manager;
import com.cake.service.manager.ManagerServiceImpl;

@Controller
@RequestMapping("/manager")
public class ManagerController {
	@Resource
	private ManagerServiceImpl ManagerServiceImpl;
	
	@RequestMapping(value="login", method = RequestMethod.POST)
	public String login(Manager manager,HttpSession session){
		List<Manager> lm = this.ManagerServiceImpl.findByName(manager.getName());
		for(Manager m : lm){
			if(m.getPassword().equals(manager.getPassword()));
				session.setAttribute("manager", m);
				return "redirect:/user/all";
		}
		return null;
	}
}
