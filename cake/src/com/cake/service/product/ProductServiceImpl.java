package com.cake.service.product;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cake.dao.product.ProductDaoImpl;
import com.cake.entity.product.Product;

@Service
@Transactional(readOnly=true)
public class ProductServiceImpl {
	@Resource
	private ProductDaoImpl productDaoImpl;
	
	public List<Product> findAll(){
		List<Product> lp=this.productDaoImpl.findAll();
		return lp;
	}
	
	public Product findById(int id){
		Product p = this.productDaoImpl.findById(id);
		return p;
	}
	
	public List<Product> findLastedProduct(){
		List<Product> flp =this.productDaoImpl.findLastedProduct();
		return flp;
	}
	
	public List<Product> findByTypeId(int typeId){
		List<Product> tpl = this.productDaoImpl.findByTypeId(typeId);
		return tpl;
	}
	
	public List<Product> findHot(String hot){
		List<Product> h =this.productDaoImpl.findHot(hot);
		return h;
	}
}
