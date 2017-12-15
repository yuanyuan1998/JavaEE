package com.cake.dao.user;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.cake.entity.cart.Cart;
import com.cake.entity.user.Address;
import com.cake.entity.user.OrderProduct;
import com.cake.entity.user.Orders;
import com.cake.entity.user.User;

@Repository
public class OrderDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	
	public void save(Orders o){
		this.sessionFactory.getCurrentSession().save(o);
	}
	
	public void saveOrderProduct(OrderProduct op){
		this.sessionFactory.getCurrentSession().save(op);
	}
	
	public List<Orders> findAll(){
		String hql = "from Orders o,OrderProduct op where o.id = op.orders.id ";
		Query query=(Query) this.sessionFactory.getCurrentSession().createQuery(hql);
		return query.list();
	}
	
	public List<Orders> findByType(String orderType){
		String hql = "from Orders o,OrderProduct op where op.orderType = ?  and o.id = op.orders.id ";
		Query query=(Query) this.sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(0,orderType);
		return query.list();
	}
	
	public void delete(int id){
		String hql = "from OrderProduct op  where op.id = ?";
		Query query=(Query) this.sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(0,id);
		query.executeUpdate();  
	}
	
	public List<OrderProduct> findUnPaidOrder(int userId){
		String hql = "from OrderProduct op , Orders o where o.user.id = ? and op.orderType = ? and op.type = ? and o.id = op.orders.id";
		Query query=(Query) this.sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(0,userId);
		query.setParameter(1,"未付款");
		query.setParameter(2,"未删除");
		return query.list();
	}
	
	public List<OrderProduct> findPaidOrder(int userId){
		String hql = "from OrderProduct op , Orders o where o.user.id = ? and op.orderType = ? and op.type = ? and o.id = op.orders.id";
		Query query=(Query) this.sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(0,userId);
		query.setParameter(1,"已付款");
		query.setParameter(2,"未删除");
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
	
	public void deleteUnpaid(int id){
		String hql = "update OrderProduct  op set op.type = ? where op.id = ?";
		Query query=(Query) this.sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(0,"已删除");
		query.setParameter(1,id);
		query.executeUpdate();  
	}
	
	public void buyUnpaid(int id){
		String hql = "update OrderProduct op set op.orderType = ? where id = ?";
		Query query=(Query) this.sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(0,"已付款");
		query.setParameter(1,id);
		query.executeUpdate();  
	}
	
	public void deletepaid(int id){
		String hql = "update OrderProduct  op set op.type = ? where op.id = ?";
		Query query=(Query) this.sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(0,"已删除");
		query.setParameter(1,id);
		query.executeUpdate();  
	}
	
	
}
