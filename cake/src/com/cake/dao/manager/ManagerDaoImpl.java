package com.cake.dao.manager;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.cake.entity.manager.Manager;

@Repository
public class ManagerDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	
	public List<Manager> findByName(String name){
		String hql = "from Manager m where m.name like ? ";
		Query query =  this.sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(0,name);
		return query.list();
	}
}
