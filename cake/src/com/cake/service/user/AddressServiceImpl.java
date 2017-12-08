package com.cake.service.user;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cake.dao.user.AddressDaoImpl;
import com.cake.entity.user.Address;
import com.cake.entity.user.User;
@Service
public class AddressServiceImpl {
	@Resource
	private AddressDaoImpl AddressDaoImpl;
	public List<Address> findAddress(int id){
		List<Address> la = this.AddressDaoImpl.findAddress(id);
		if(la != null)
			return la;
		else
			return null;
	}
	
	public Address addAddress(Address address){
		List<Address> la = this.AddressDaoImpl.findAddress(address.getUserId());
		for(Address a:la){
			if(a.getName().equals(address.getName()) && a.getPhoneNum().equals(address.getPhoneNum()) && a.getAddress().equals(address.getAddress())){
				return null;
			}
		}
		return  this.AddressDaoImpl.saveAddress(address);
	}
	
	public void deleteAddress(int id){
		this.AddressDaoImpl.deleteAddress(id);
	}
	
	public void updateAddressName(int id,String name){
		this.AddressDaoImpl.updateAddressName(id, name);
	}
	public void updateAddressPhone(int id,String phone){
		this.AddressDaoImpl.updateAddressPhone(id, phone);
	}
	public void updateAddress(int id,String address){
		this.AddressDaoImpl.updateAddress(id, address);
	}
}
