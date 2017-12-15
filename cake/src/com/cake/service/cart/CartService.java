package com.cake.service.cart;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.cake.dao.cart.CartDaoImpl;
import com.cake.dao.product.ProductDaoImpl;
import com.cake.entity.cart.Cart;
import com.cake.entity.product.Product;

@Service
public class CartService {
	@Resource
	private CartDaoImpl cartDaoImpl;
	
	public void save(Cart c){
		this.cartDaoImpl.save(c);
	}
	
	public Cart findByProductIdSize(int productId,int size,int userId){
		return this.cartDaoImpl.findByProductIdSize(productId, size,userId);
	}
	
	public List<Cart> findByUserId(int userId){
		return this.cartDaoImpl.findByUserId(userId);
	}
	
	public void delete(int id){
		this.cartDaoImpl.deleteById(id);
	}
	
	public void addCount(int id,int count){
		this.cartDaoImpl.addCount(id,count);
	}
	
	public void jianCount(int id){
		this.cartDaoImpl.jianCount(id);
	}
}
