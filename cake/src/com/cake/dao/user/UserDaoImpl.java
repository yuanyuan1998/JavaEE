package com.cake.dao.user;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.cake.entity.user.Address;
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
	
	public User findById(int id){
		String hql = "from User where id = ?";
		Query query=(Query) this.sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(0,id);
		return (User) query.uniqueResult();
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
	
	public List<Address> findAddress(int id){
		String hpl = "from Address where userId = ?";
		Query query = this.sessionFactory.getCurrentSession().createQuery(hpl);
		query.setParameter(0, id);
		List<Address> la = query.list();
		if(la != null)
			return la;
		else
			return null;
	}
	
	public Address saveAddress(Address address){
		this.sessionFactory.getCurrentSession().save(address);
		return address;
	}
	
	public void updateName(int id,String name){
		String hql = "update User as u set u.name = ? where u.id = ?";
		Query query=(Query) this.sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(0,name);
		query.setParameter(1,id);
		query.executeUpdate(); 
	}
	
	public void updateHead(int id,String head){
		String hql = "update User as u set u.head = ? where u.id = ?";
		Query query=(Query) this.sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(0,head);
		query.setParameter(1,id);
		query.executeUpdate(); 
	}
	public void updatePhoneNum(int id,String phoneNum){
		String hql = "update User as u set u.phoneNum = ? where u.id = ?";
		Query query=(Query) this.sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(0,phoneNum);
		query.setParameter(1,id);
		query.executeUpdate(); 
	}
	public void updateEmail(int id,String email){
		String hql = "update User as u set u.email = ? where u.id = ?";
		Query query=(Query) this.sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(0,email);
		query.setParameter(1,id);
		query.executeUpdate(); 
	}
	
	public void updatePassword(int id,String password){
		String hql = "update User as u set u.password = ? where u.id = ?";
		Query query=(Query) this.sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(0,password);
		query.setParameter(1,id);
		query.executeUpdate(); 
	}
	
}
