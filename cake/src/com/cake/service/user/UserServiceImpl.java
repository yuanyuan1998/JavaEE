package com.cake.service.user;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cake.dao.product.ProductDaoImpl;
import com.cake.dao.user.UserDaoImpl;
import com.cake.entity.product.Product;
import com.cake.entity.user.User;

@Service
@Transactional(readOnly=true)
public class UserServiceImpl {
	@Resource
	private UserDaoImpl userDaoImpl;
	
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
}
