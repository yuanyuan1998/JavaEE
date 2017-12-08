package com.cake.controller.user;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cake.entity.user.Address;
import com.cake.entity.user.User;
import com.cake.service.user.AddressServiceImpl;
@Controller
@RequestMapping("/address")
public class AddressController {
	@Resource
	private AddressServiceImpl AddressServiceImpl; 
	
	@RequestMapping(value="order")
	public String orderAddress(HttpSession session,HttpServletRequest request){
		User u = (User)session.getAttribute("user");
		List<Address> la = new ArrayList<Address>();
		if(u == null){
			la = null;
		}else{
			la = this.AddressServiceImpl.findAddress(u.getId());
		}
		request.setAttribute("la", la);
		return "buy";
	}
	
	@RequestMapping(value="orderAdd", method = RequestMethod.POST)
	public String orderAddAddress(HttpSession session,Address address,HttpServletRequest request){
		User u = (User)session.getAttribute("user");
		address.setUserId(u.getId());
		this.AddressServiceImpl.addAddress(address);
		return "redirect:/address/order";
	}
	
	@RequestMapping(value="reviceAddress")
	public void reviceAddress(HttpSession session,HttpServletRequest request,@RequestParam("addressId") int id,@RequestParam("name") String name,@RequestParam("phone") String phone,@RequestParam("address") String address){
		if(!name.equals("")){
			this.AddressServiceImpl.updateAddressName(id, name);
		}
		if(!phone.equals("")){
			this.AddressServiceImpl.updateAddressPhone(id, phone);
		}
		if(!address.equals("")){
			this.AddressServiceImpl.updateAddress(id, address);
		}
		User u = (User)session.getAttribute("user");
		List<Address> la = new ArrayList<Address>();
		if(u == null){
			la = null;
		}else{
			la = this.AddressServiceImpl.findAddress(u.getId());
		}
		request.setAttribute("la", la);
	}
	

	@RequestMapping(value="user")
	public String userAddress(HttpSession session,HttpServletRequest request){
		User u = (User)session.getAttribute("user");
		List<Address> la = new ArrayList<Address>();
		if(u == null){
			la = null;
		}else{
			la = this.AddressServiceImpl.findAddress(u.getId());
		}
		request.setAttribute("la", la);
		return "address";
	}
	
	@RequestMapping(value="userAdd", method = RequestMethod.POST)
	public String userAddAddress(HttpSession session,Address address){
		User u = (User)session.getAttribute("user");
		address.setUserId(u.getId());
		this.AddressServiceImpl.addAddress(address);
		return "redirect:/address/user";
	}
	
	@RequestMapping(value="userDelete")
	public String userDeleteAddress(HttpSession session,int id){
		this.AddressServiceImpl.deleteAddress(id);
		return "redirect:/address/user";
	}
}
