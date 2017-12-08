package com.cake.service.user;

import java.util.List;

import javax.annotation.Resource;
import com.cake.dao.user.OrderDaoImpl;
import com.cake.entity.user.Address;
import com.cake.entity.user.OrderProduct;

import org.springframework.stereotype.Service;

@Service
public class OrderServiceImpl {
	@Resource
	private OrderDaoImpl OrderDaoImpl;
	
	public void save(OrderProduct o){
		this.OrderDaoImpl.save(o);
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
	
	public void deleteUnpaid(int userId,int productId,int size){
		this.OrderDaoImpl.deleteUnpaid(userId, productId, size);
	}
	public void buyUnpaid(int userId,int productId,int size){
		 this.OrderDaoImpl.buyUnpaid(userId, productId, size);
	}
	
	public void deletepaid(int userId,int productId,int size){
		this.OrderDaoImpl.deletepaid(userId, productId, size);
	}
}
