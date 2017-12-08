package com.cake.dao.user;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.cake.entity.cart.Cart;
import com.cake.entity.user.Address;
import com.cake.entity.user.OrderProduct;

@Repository
public class OrderDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	
	public void save(OrderProduct o){
		this.sessionFactory.getCurrentSession().save(o);
	}
	
	public List<OrderProduct> findUnPaidOrder(int userId){
		String hql = "from OrderProduct where userId = ? and orderType = ?";
		Query query=(Query) this.sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(0,userId);
		query.setParameter(1,"未付款");
		return query.list();
	}
	
	public List<OrderProduct> findPaidOrder(int userId){
		String hql = "from OrderProduct where userId = ? and orderType = ?";
		Query query=(Query) this.sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(0,userId);
		query.setParameter(1,"已付款");
		return query.list();
	}
	
	public void addCount(int productId,int size,int count){
		String hql = "update OrderProduct as c set c.count = (c.count + ?) where c.productId = ? and c.size = ? and orderType = ? ";
		Query query=(Query) this.sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(0,count);
		query.setParameter(1,productId);
		query.setParameter(2,size);
		query.setParameter(3,"未付款");
		query.executeUpdate();
	}
	
	public void jianCount(int productId,int size){
		String hql = "update Cart as c set c.count = (c.count - 1)  where c.productId = ? and c.size = ? and orderType = ?";
		Query query=(Query) this.sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(0,productId);
		query.setParameter(1,size);
		query.setParameter(2,"未付款");
		query.executeUpdate();
	}
	
	public OrderProduct findByUserProductSize(int userId,int productId,int size){
		String hql = "from OrderProduct where productId = ? and size = ? and userId = ?";
		Query query=(Query) this.sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(0,productId);
		query.setParameter(1,size);
		query.setParameter(2,userId);
		return (OrderProduct) query.uniqueResult();
	}
	
	public void deleteUnpaid(int userId,int id,int size){
		String hql = "delete from OrderProduct where productId = ? and size = ? and userId = ? and orderType = ?";
		Query query=(Query) this.sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(0,id);
		query.setParameter(1,size);
		query.setParameter(2,userId);
		query.setParameter(3,"未付款");
		query.executeUpdate();  
	}
	
	public void buyUnpaid(int userId,int id,int size){
		String hql = "update OrderProduct as c set c.orderType = ? where c.productId = ? and c.size = ? and userId = ?";
		Query query=(Query) this.sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(0,"已付款");
		query.setParameter(1,id);
		query.setParameter(2,size);
		query.setParameter(3,userId);
		query.executeUpdate();  
	}
	
	public void deletepaid(int userId,int id,int size){
		String hql = "delete from OrderProduct where productId = ? and size = ? and userId = ? and orderType = ?";
		Query query=(Query) this.sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(0,id);
		query.setParameter(1,size);
		query.setParameter(2,userId);
		query.setParameter(3,"已付款");
		query.executeUpdate();  
	}
	
	
}
