package com.cake.service.manager;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import com.cake.dao.manager.ManagerDaoImpl;
import com.cake.entity.manager.Manager;

@Service
public class ManagerServiceImpl {
	@Resource 
	private ManagerDaoImpl ManagerDaoImpl;
	
	public List<Manager> findByName(String name){
		return this.ManagerDaoImpl.findByName(name);
	}
	
}
