package com.cake.service.product;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cake.dao.product.ProductDaoImpl;
import com.cake.dao.product.ProductSizeDaoImpl;
import com.cake.entity.product.Product;
import com.cake.entity.product.ProductType;
import com.cake.entity.product.Size;

@Service
public class ProductSizeServiceImpl {
	@Resource
	private ProductSizeDaoImpl productSizeDaoImpl;
	
	public List<Size> findSize(int id){
		List<Size> lp=this.productSizeDaoImpl.findById(id);
		return lp;
	}
	
	public void save(Size size){
		this.productSizeDaoImpl.save(size);
	}
	
	public List<Size> find(){
		return this.productSizeDaoImpl.find();
	}
	
	public void delete(int id){
		this.productSizeDaoImpl.delete(id);
	}
}
