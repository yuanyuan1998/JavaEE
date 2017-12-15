package com.cake.service.product;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cake.dao.product.ProductDaoImpl;
import com.cake.entity.product.Product;

@Service
public class ProductServiceImpl {
	@Resource
	private ProductDaoImpl productDaoImpl;
	
	public void addProduct(Product p){
		this.productDaoImpl.addProduct(p);
	}
	
	public void deleteProduct(int productId,int sizeId){
		this.productDaoImpl.deleteProduct(productId, sizeId);
	}
	
	public List<Product> findByName(String name){
		return this.productDaoImpl.findByNames(name);
	}
	
	public List<Product> all(){
		return this.productDaoImpl.all();
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
	
	public void updateName(int id,String name){
		this.productDaoImpl.updateName(id, name);
	}
	
	public void updateDescription(int id,String d){
		this.productDaoImpl.updateDescription(id, d);
	}
	
	public void updateDate(int id,Date date){
		this.productDaoImpl.updateDate(id, date);
	}
	
	public void updateHot(int id,String hot){
		this.productDaoImpl.updateHot(id, hot);
	}
	
	public void updatetype(int id,int type){
		this.productDaoImpl.updatetype(id, type);
	}
	
	public void updateSize(int id,int sizeId){
		this.productDaoImpl.updateSize(id, sizeId);
	}
}
