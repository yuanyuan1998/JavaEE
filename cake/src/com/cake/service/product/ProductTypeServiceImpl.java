package com.cake.service.product;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cake.dao.product.ProductSizeDaoImpl;
import com.cake.dao.product.ProductTypeDaoImpl;
import com.cake.entity.product.ProductType;
@Service
public class ProductTypeServiceImpl {
	@Resource
	private ProductTypeDaoImpl productTypeDaoImpl;
	
	public List<ProductType> find(){
		return this.productTypeDaoImpl.find();
	}
	
	public void save(ProductType pt){
		this.productTypeDaoImpl.save(pt);
	}
}
