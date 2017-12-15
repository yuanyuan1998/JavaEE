package com.cake.service.user;

import java.util.List;

import javax.annotation.Resource;
import com.cake.dao.user.OrderDaoImpl;
import com.cake.entity.user.Address;
import com.cake.entity.user.OrderProduct;
import com.cake.entity.user.Orders;

import org.springframework.stereotype.Service;

@Service
public class OrderServiceImpl {
	@Resource
	private OrderDaoImpl OrderDaoImpl;
	
	public void save(Orders o){
		this.OrderDaoImpl.save(o);
	}
	
	public List<Orders> findByType(String orderType){
		return this.OrderDaoImpl.findByType(orderType);
	}
	
	public void saveOrderProduct(OrderProduct op){
		this.OrderDaoImpl.saveOrderProduct(op);
	}
	
	public List<Orders> findAll(){
		return this.OrderDaoImpl.findAll();
	}
	
	public void delete(int id){
		this.OrderDaoImpl.delete(id);
	}
	
	public List<OrderProduct> findUnPaidOrder(int userId){
		return this.OrderDaoImpl.findUnPaidOrder(userId);
	}
	
	public List<OrderProduct> findPaidOrder(int userId){
		return this.OrderDaoImpl.findPaidOrder(userId);
	}
	
	public void addCount(int productId,int size,int count){
		this.OrderDaoImpl.addCount(productId, size,count);
	}
	
	public void jianCount(int productId,int size){
		this.OrderDaoImpl.jianCount(productId, size);
	}
	
	public OrderProduct findByUserProductSize(int userId,int productId,int size){
		return this.OrderDaoImpl.findByUserProductSize(userId, productId, size);
	}
	
	public void deleteUnpaid(int id){
		this.OrderDaoImpl.deleteUnpaid(id);
	}
	public void buyUnpaid(int id){
		 this.OrderDaoImpl.buyUnpaid(id);
	}
	
	public void deletepaid(int id){
		this.OrderDaoImpl.deletepaid(id);
	}
}
