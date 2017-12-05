package com.cake.entity.cart;

import java.util.HashMap;
import java.util.Map;

import javax.persistence.Entity;
import javax.servlet.http.HttpSession;

import com.cake.entity.product.Product;


public class Cart {
	public Map<Integer,CartItem> Cart = new HashMap<Integer,CartItem>();
	public void addCart(Product pro,int count,Integer size,HttpSession session) {
		CartItem cartitem = (CartItem) Cart.get(pro.getId());
		if(Cart.containsKey(pro.getId()*10+size)){
				CartItem ci=Cart.get(pro.getId()*10+size);
				ci.setCount(ci.getCount()+count);
				ci.setSize(size);
		}else{
			CartItem ci=new CartItem();
			ci.setProduct(pro);
			ci.setCount(count);
			ci.setSize(size);
			Cart.put(pro.getId()*10+size, ci);
		}
		session.setAttribute("Cart", Cart);
	}
}
