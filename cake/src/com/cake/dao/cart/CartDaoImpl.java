package com.cake.dao.cart;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.cake.entity.cart.Cart;
import com.cake.entity.product.Product;

@Repository
public class CartDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	
	public void save(Cart c){
		this.sessionFactory.getCurrentSession().save(c);
	}
	
	public Cart findByProductIdSize(int productId,int size,int userId){
		String hql = "from Cart where productId = ? and size = ? and userId = ?";
		Query query=(Query) this.sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(0,productId);
		query.setParameter(1,size);
		query.setParameter(2,userId);
		return (Cart) query.uniqueResult();
	}
	
	public List<Cart> findByUserId(int userId){
		String hql = "from Cart where userId = ?";
		Query query=(Query) this.sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(0,userId);
		return query.list();
	}
	
	public void deleteById(int id){
		String hql = "delete from Cart where id = ?";
		Query query=(Query) this.sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(0,id);
		query.executeUpdate();  
	}
	
	public void addCount(int id,int count){
		String hql = "update Cart as c set c.count = (c.count + ?) where c.id = ?";
		Query query=(Query) this.sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(0,count);
		query.setParameter(1,id);
		query.executeUpdate();
	}
	
	public void jianCount(int id){
		String hql = "update Cart as c set c.count = (c.count - 1)  where c.id = ?";
		Query query=(Query) this.sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(0,id);
		query.executeUpdate();
	}
}
