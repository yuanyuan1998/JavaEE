package com.cake.controller.cart;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cake.entity.cart.Cart;
import com.cake.entity.cart.CartItem;
import com.cake.entity.product.Product;
import com.cake.entity.user.User;
import com.cake.service.cart.CartServlet;
import com.cake.service.product.ProductServiceImpl;
import com.cake.service.product.ProductSizeServiceImpl;

@Controller
@RequestMapping("/cart")
public class CartController {
	@Resource
	private CartServlet cartServlet;
	
	@RequestMapping("/addProduct")
	public void addProduct(@RequestParam("id") int id,@RequestParam("count") int count,@RequestParam("size") String size,HttpSession session,HttpServletResponse response) throws IOException{
		User user = (User) session.getAttribute("user");
		PrintWriter out = response.getWriter();
		int countNum = (int) session.getAttribute("countNum");
		countNum += count;
		if(user == null){
			out.print(1);
		}else{
			Integer size1 = Integer.parseInt(size.trim()); 
			Cart c = this.cartServlet.addProduct(id,count,size1,session);
			Iterator i = c.Cart.values().iterator();
			List<CartItem> cartlist = new ArrayList<CartItem>();
			while(i.hasNext()){
				CartItem ci=(CartItem)i.next();
				cartlist.add(ci);
			}	
			session.setAttribute("cartlist",cartlist);
		}
		session.setAttribute("countNum", countNum);
	}
	@RequestMapping("/buyProduct")
	public void buyProduct(@RequestParam("id") int id,@RequestParam("count") int count,@RequestParam("size") String size,HttpSession session,HttpServletResponse response) throws IOException{
		User user = (User) session.getAttribute("user");
		PrintWriter out = response.getWriter();
		int countNum = (int) session.getAttribute("countNum");
		countNum += count;
		if(user == null){
			out.print(1);
		}else{
			Integer size1 = Integer.parseInt(size.trim()); 
			Cart c = this.cartServlet.addProduct(id,count,size1,session);
			Iterator i = c.Cart.values().iterator();
			List<CartItem> cartlist = new ArrayList<CartItem>();
			while(i.hasNext()){
				CartItem ci=(CartItem)i.next();
				cartlist.add(ci);
			}	
			session.setAttribute("cartlist",cartlist);
			out.print(2);
		}
		session.setAttribute("countNum", countNum);
	}
}
