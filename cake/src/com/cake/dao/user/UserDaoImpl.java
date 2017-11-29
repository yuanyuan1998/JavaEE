package com.cake.dao.user;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.cake.entity.user.User;

@Repository
public class UserDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	
	public User save(User u){
		if(u.getName() != "" && u.getPassword() != "" && u.getEmail() != "" && u.getPhoneNum() != ""){
			this.sessionFactory.getCurrentSession().save(u);
			return u;
		}else
			return null;
	}
	
	public User findByName(String name){
		String hql = "from User where name like ?";
		Query query=(Query) this.sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(0,name);
		List<User> lu = query.list();
		if(lu != null  && lu.size()>0){
			return lu.get(0);
		}else
			return null;
	}
	
	public User findByPass(String password){
		String hql = "from User where password = ?";
		Query query=(Query) this.sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(0, password);
		List<User> lu = query.list();
		if(lu != null  && lu.size()>0){
			return lu.get(0);
		}else
			return null;
	}
}
