package com.cake.service.cart;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.cake.dao.product.ProductDaoImpl;
import com.cake.entity.cart.Cart;
import com.cake.entity.cart.CartItem;
import com.cake.entity.product.Product;

@Service
public class CartServlet {
	@Resource
	private ProductDaoImpl productDapImpl;
	
	public Cart addProduct(Integer id,int count,Integer size,HttpSession session){
		Product p = this.productDapImpl.findById(id);
		Cart c = (Cart)session.getAttribute("cart");
		if(c == null){
			c = new Cart();
		}
		c.addCart(p,count,size);
		session.setAttribute("cart", c);
		return c;
	}
}
