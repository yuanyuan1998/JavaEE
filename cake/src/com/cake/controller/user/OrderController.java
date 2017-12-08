package com.cake.controller.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cake.entity.cart.Cart;
import com.cake.entity.product.Product;
import com.cake.entity.user.Address;
import com.cake.entity.user.OrderProduct;
import com.cake.entity.user.User;
import com.cake.service.cart.CartService;
import com.cake.service.user.OrderServiceImpl;
import com.cake.service.user.AddressServiceImpl;
import com.cake.service.product.ProductServiceImpl;

@Controller
@RequestMapping("/order")
public class OrderController {
	@Resource
	private OrderServiceImpl OrderServiceImpl;
	@Resource
	private CartService CartServiceImpl;
	@Resource
	private ProductServiceImpl ProductServiceImpl;
	@Resource
	private AddressServiceImpl AddressServiceImpl;
	
	@RequestMapping(value="/save")
	public void save(@RequestParam("productId1") String productId1,HttpServletResponse response,@RequestParam("size1") String size1,@RequestParam("count1") String count1,@RequestParam("productId2") String productId2,@RequestParam("size2") String size2,@RequestParam("count2") String count2,@RequestParam("addressId") int addressId,HttpSession session) throws IOException{
		PrintWriter out = response.getWriter();
		User u = (User) session.getAttribute("user");
		List<Cart> cart = this.CartServiceImpl.findByUserId(u.getId());
		String[] pi = productId1.split("-");
		String[] s = size1.split("-");
		String[] c = count1.split("-");
		for(int i = 0 ; i < pi.length;i++){
			OrderProduct o = new OrderProduct();
			if(!pi[i].equals("")  &&  !s[i].equals("")  &&  !c[i].equals("") ){
				o.setProductId(Integer.parseInt(pi[i]));
				o.setSize(Integer.parseInt(s[i]));
				o.setCount(Integer.parseInt(c[i]));
				o.setOrderType("已付款");
				o.setAddressId(addressId);
				this.OrderServiceImpl.save(o);
				this.CartServiceImpl.delete(Integer.parseInt(pi[i]), Integer.parseInt(s[i]));
			}
		}
		String[] pi2 = productId2.split("-");
		String[] s2 = size2.split("-");
		String[] c2 = count2.split("-");
		for(int i = 0 ; i < pi2.length;i++){
			OrderProduct o = new OrderProduct();
			if(!pi2[i].equals("")  &&  !s2[i].equals("")  &&  !c2[i].equals("")){
				o.setProductId(Integer.parseInt(pi2[i]));
				o.setSize(Integer.parseInt(s2[i]));
				o.setCount(Integer.parseInt(c2[i]));
				o.setOrderType("未付款");
				o.setAddressId(addressId);
				this.OrderServiceImpl.save(o);
				this.CartServiceImpl.delete(Integer.parseInt(pi2[i]), Integer.parseInt(s2[i]));
			}
		}
	}
	
	@RequestMapping(value="/unpaid")
	public String findUnPaidOrder(HttpSession session,HttpServletRequest request){
		User u = (User) session.getAttribute("user");
		List<OrderProduct> lop = this.OrderServiceImpl.findUnPaidOrder(u.getId());
		request.setAttribute("uppl", lop);
		return "person";
	}
	
	@RequestMapping(value="/paid")
	public String findPaidOrder(HttpSession session,HttpServletRequest request){
		User u = (User) session.getAttribute("user");
		List<OrderProduct> lop = this.OrderServiceImpl.findPaidOrder(u.getId());
		request.setAttribute("ppl", lop);
		return "personpaid";
	}
	
	@RequestMapping("/jianCount")
	public String jianCount(@RequestParam("id") int id,@RequestParam("size") int size,@RequestParam("count") int count,HttpSession session){
		User u = (User) session.getAttribute("user");
		OrderProduct op = this.OrderServiceImpl.findByUserProductSize(u.getId(), id, size);
		if(op.getCount() > 1){
			this.OrderServiceImpl.jianCount(id, size);
		}
		return "redirect:/order/unpaid";
	}
	
	@RequestMapping("/addCount")
	public String addCount(@RequestParam("id") int id,@RequestParam("size") int size,@RequestParam("count") int count,HttpSession session){
		this.OrderServiceImpl.addCount(id, size, count);
		return "redirect:/order/unpaid";
	}
	
	@RequestMapping("/delete")
	public String deleteUnpaid(@RequestParam("id") int id,@RequestParam("size") int size,HttpSession session){
		User u = (User) session.getAttribute("user");
		this.OrderServiceImpl.deleteUnpaid(u.getId(),id, size );
		return "redirect:/order/unpaid";
	}
	@RequestMapping("/buy")
	public String buyUnpaid(@RequestParam("id") int id,@RequestParam("size") int size,HttpSession session){
		User u = (User) session.getAttribute("user");
		this.OrderServiceImpl.buyUnpaid( u.getId(),id,size);
		return "redirect:/order/unpaid";
	}
	
	@RequestMapping("/deletePaid")
	public String deletepaid(@RequestParam("id") int id,@RequestParam("size") int size,HttpSession session){
		User u = (User) session.getAttribute("user");
		this.OrderServiceImpl.deletepaid(u.getId(),id, size );
		return "redirect:/order/paid";
	}
	
	
	
}
