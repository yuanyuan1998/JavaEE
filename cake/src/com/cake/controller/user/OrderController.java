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
import com.cake.entity.user.Orders;
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
		User u = (User) session.getAttribute("user");
		String[] pi = productId1.split("-");
		String[] s = size1.split("-");
		String[] c = count1.split("-");
		Address address = this.AddressServiceImpl.findById(addressId);
		Orders o = new Orders();
		o.setAddress(address);
		o.setUser(u);
		this.OrderServiceImpl.save(o);
		for(int i = 0 ; i < pi.length;i++){
			if(!pi[i].equals("")  &&  !s[i].equals("")  &&  !c[i].equals("") ){
				Product p = this.ProductServiceImpl.findById(Integer.parseInt(pi[i]));
				Cart cart = this.CartServiceImpl.findByProductIdSize(Integer.parseInt(pi[i]), Integer.parseInt(s[i]) , u.getId());
				OrderProduct op = new OrderProduct();
				op.setSize(Integer.parseInt(s[i]));
				op.setCount(Integer.parseInt(c[i]));
				op.setProduct(p);
				op.setOrders(o);
				op.setOrderType("已付款");
				op.setType("未删除");
				this.OrderServiceImpl.saveOrderProduct(op);
				this.CartServiceImpl.delete(cart.getId());
			}
		}
		String[] pi2 = productId2.split("-");
		String[] s2 = size2.split("-");
		String[] c2 = count2.split("-");
		Orders o1 = new Orders();
		for(int i = 0 ; i < pi2.length;i++){
			if(!pi2[i].equals("")  &&  !s2[i].equals("")  &&  !c2[i].equals("")){
				Product p = this.ProductServiceImpl.findById(Integer.parseInt(pi2[i]));
				Address address1 = this.AddressServiceImpl.findById(addressId);
				Cart cart = this.CartServiceImpl.findByProductIdSize(Integer.parseInt(pi2[i]), Integer.parseInt(s2[i]) , u.getId());
				OrderProduct op = new OrderProduct();
				op.setProduct(p);
				op.setOrders(o);
				op.setSize(Integer.parseInt(s2[i]));
				op.setCount(Integer.parseInt(c2[i]));
				op.setOrderType("未付款");
				op.setType("未删除");
				this.OrderServiceImpl.saveOrderProduct(op);
				this.CartServiceImpl.delete(cart.getId());
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
		return "personPaid";
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
	public String deleteUnpaid(@RequestParam("id") int id,HttpSession session){
		User u = (User) session.getAttribute("user");
		this.OrderServiceImpl.deleteUnpaid(id );
		return "redirect:/order/unpaid";
	}
	@RequestMapping("/buy")
	public String buyUnpaid(@RequestParam("id") int id,HttpSession session){
		User u = (User) session.getAttribute("user");
		this.OrderServiceImpl.buyUnpaid( id);
		return "redirect:/order/unpaid";
	}
	
	@RequestMapping("/deletePaid")
	public String deletepaid(@RequestParam("id") int id,HttpSession session){
		User u = (User) session.getAttribute("user");
		this.OrderServiceImpl.deletepaid(id);
		return "redirect:/order/paid";
	}
	
	@RequestMapping("/all")
	public String all(HttpServletRequest request){
		List<Orders> opl = this.OrderServiceImpl.findAll();
		request.setAttribute("opl", opl);
		return "backOrder";
	}
	
	@RequestMapping(value="backOrderType")
	public String findBtType(@RequestParam("orderType") String orderType,HttpServletRequest request){
		if(orderType.equals("")){
			List<Orders> opl = this.OrderServiceImpl.findAll();
			request.setAttribute("opl", opl);
		}else{
			List<Orders> opl = this.OrderServiceImpl.findByType(orderType);
			request.setAttribute("opl", opl);
		}
		return "backOrder";
	}
	
	@RequestMapping("/backdelete")
	public String delete(@RequestParam("id") int id,HttpServletRequest request){
		this.OrderServiceImpl.delete(id);
		return "redirect:/order/all";
	}
}
