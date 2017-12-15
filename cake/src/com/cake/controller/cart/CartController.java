package com.cake.controller.cart;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cake.entity.cart.Cart;
import com.cake.entity.user.User;
import com.cake.service.cart.CartService;

@Controller
@RequestMapping("/cart")
public class CartController {
	@Resource
	private CartService cartServlet;
	
	@RequestMapping("/productCart")
	public String productCart(HttpSession session,HttpServletRequest request){
		User u = (User) session.getAttribute("user");
		List<Cart> cartlist = new ArrayList<Cart>();
		if(u == null){
			cartlist = null;
		}else{
			cartlist = this.cartServlet.findByUserId(u.getId());
		}
		int countNum = 0;
		if(cartlist != null){
			if(cartlist.size() == 0){
				countNum = 0;
			}else{
				countNum =  cartlist.get(0).getCountNum();
			}
		}
		session.setAttribute("countNum", countNum);
		session.setAttribute("cartlist", cartlist);
		return "frontCart";
	}
	
	@RequestMapping("/addProduct")
	public void addProduct(@RequestParam("id") int id,@RequestParam("count") int count,@RequestParam("size") String size,HttpSession session,HttpServletResponse response) throws IOException{
		User user = (User) session.getAttribute("user");
		PrintWriter out = response.getWriter();
		int countNum = (int) session.getAttribute("countNum");
		if(user == null){
			out.print(1);
		}else{
			List<Cart> cartlist1 = this.cartServlet.findByUserId(user.getId());
			Cart c1 = this.cartServlet.findByProductIdSize(id, Integer.parseInt(size),user.getId());
			if(c1 != null){
				this.cartServlet.addCount(c1.getId(), count);
			}else{
				Cart c = new Cart();
				c.setProductId(id);
				c.setSize(Integer.parseInt(size));
				c.setCount(count);
				c.setUserId(user.getId());
				this.cartServlet.save(c);
			}
		}
	}
	
	@RequestMapping("/buyProduct")
	public void buyProduct(@RequestParam("id") int id,@RequestParam("count") int count,@RequestParam("size") String size,HttpSession session,HttpServletResponse response) throws IOException{
		User user = (User) session.getAttribute("user");
		PrintWriter out = response.getWriter();
		int countNum = (int) session.getAttribute("countNum");
		if(user == null){
			out.print(1);
		}else{
			List<Cart> cartlist1 = this.cartServlet.findByUserId(user.getId());
			Cart c1 = this.cartServlet.findByProductIdSize(id, Integer.parseInt(size),user.getId());
			if(c1 != null){
				this.cartServlet.addCount(c1.getId(), count);
			}else{
				Cart c = new Cart();
				c.setProductId(id);
				c.setSize(Integer.parseInt(size));
				c.setCount(count);
				c.setUserId(user.getId());
				this.cartServlet.save(c);
			}
			out.print(2);
		}
	}
	
	@RequestMapping("/deleteProduct")
	public String deleteProduct(@RequestParam("id") int id,@RequestParam("size") int size,@RequestParam("count") int count,HttpSession session){
		User user = (User) session.getAttribute("user");
		Cart c = this.cartServlet.findByProductIdSize(id, size, user.getId());
		this.cartServlet.delete(c.getId());
		return "redirect:/cart/productCart";
	}
	
	@RequestMapping("/jianCount")
	public String jianCount(@RequestParam("id") int id,@RequestParam("size") int size,@RequestParam("count") int count,HttpSession session){
		User user = (User) session.getAttribute("user");
		Cart c = this.cartServlet.findByProductIdSize(id, size, user.getId());
		if(c.getCount() > 1){
			this.cartServlet.jianCount(c.getId());
		}
		return "redirect:/cart/productCart";
	}
	
	@RequestMapping("/addCount")
	public String addCount(@RequestParam("id") int id,@RequestParam("size") int size,@RequestParam("count") int count,HttpSession session){
		User user = (User) session.getAttribute("user");
		Cart c = this.cartServlet.findByProductIdSize(id, size, user.getId());
		this.cartServlet.addCount(c.getId(),count);
		return "redirect:/cart/productCart";
	}
	
}
