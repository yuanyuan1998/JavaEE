package com.cake.dao.user;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.cake.entity.user.Address;
@Repository
public class AddressDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	
	public List<Address> findAddress(int id){
		String hpl = "from Address where userId = ?";
		Query query = this.sessionFactory.getCurrentSession().createQuery(hpl);
		query.setParameter(0, id);
		List<Address> la = query.list();
		if(la != null)
			return la;
		else
			return null;
	}
	
	public Address saveAddress(Address address){
		this.sessionFactory.getCurrentSession().save(address);
		return address;
	}
	
	public void deleteAddress(int id){
		String hql = "delete from Address where id = ? ";
		Query query=(Query) this.sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(0,id);
		query.executeUpdate();  
	}
	

	public void updateAddressName(int id,String name){
		String hql = "update Address as u set u.name = ? where u.id = ?";
		Query query=(Query) this.sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(0,name);
		query.setParameter(1,id);
		query.executeUpdate(); 
	}
	
	public void updateAddressPhone(int id,String phone){
		String hql = "update Address as u set u.phoneNum = ? where u.id = ?";
		Query query=(Query) this.sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(0,phone);
		query.setParameter(1,id);
		query.executeUpdate(); 
	}
	
	public void updateAddress(int id,String address){
		String hql = "update Address as u set u.address = ? where u.id = ?";
		Query query=(Query) this.sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(0,address);
		query.setParameter(1,id);
		query.executeUpdate(); 
	}
}
