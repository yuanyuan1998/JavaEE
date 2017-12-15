package com.cake.service.user;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cake.dao.user.UserDaoImpl;
import com.cake.entity.user.User;

@Service
public class UserServiceImpl {
	@Resource
	private UserDaoImpl userDaoImpl;
	
	public List<User> findAll(){
		return this.userDaoImpl.findAll();
	}
	
	public List<User> findByNames(String name){
		return this.userDaoImpl.findByNames(name);
	}
	
	public void delete(int id){
		this.userDaoImpl.delete(id);
	}
	
	public User save(User u){
		User u1 = this.userDaoImpl.save(u);
 		if( u1 != null){
 			return u1;
 		}else
 			return null;
	}
	
	public User checkUser(String name){
		User u = this.userDaoImpl.findByName(name);
		if( u != null){
			return u;
		}else
			return null;
	}
	
	public User checkPass(String password){
		User u1 = this.userDaoImpl.findByPass(password);
		if(u1 != null){
			return u1;
		}else
			return null;
	}
	
	public User findById(int id){
		return this.userDaoImpl.findById(id);
	}
	public void updateName(int id,String name){
		this.userDaoImpl.updateName(id,name);
	}
	public void updatePhoneNum(int id, String phoneNum){
		this.userDaoImpl.updatePhoneNum(id,phoneNum);
	}
	public void updateEmail(int id,String email){
		this.userDaoImpl.updateEmail(id,email);
	}
	public void updatePassword(int id,String password){
		this.userDaoImpl.updatePassword(id,password);
	}
	public void updateHead(int id,String head){
		this.userDaoImpl.updateHead(id,head);
	}
}
