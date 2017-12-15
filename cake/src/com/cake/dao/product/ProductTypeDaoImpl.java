package com.cake.dao.product;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.cake.entity.product.ProductType;

@Repository
public class ProductTypeDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	
	public String findTypeName(int id){
		String hql ="select t.name from ProductType as t,Product as p where t.id = p.id and p.id = ?";
		Query query =  this.sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(0,id);
		return (String) query.uniqueResult();
	}
	
	public List<ProductType> find(){
		return this.sessionFactory.getCurrentSession().createQuery("from "+ProductType.class.getSimpleName()).list();
	}
	
	public void save(ProductType pt){
		this.sessionFactory.getCurrentSession().save(pt);
	}
}
