package com.cake.service.product;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cake.dao.product.ProductDaoImpl;
import com.cake.dao.product.ProductSizeDaoImpl;
import com.cake.entity.product.Product;
import com.cake.entity.product.ProductSize;

@Service
@Transactional(readOnly=true)
public class ProductSizeServiceImpl {
	@Resource
	private ProductSizeDaoImpl productSizeDaoImpl;
	
	public List<ProductSize> findSize(int id){
		List<ProductSize> lp=this.productSizeDaoImpl.findById(id);
		return lp;
	}
}
